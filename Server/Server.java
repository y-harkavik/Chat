import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class Server extends CommonGUI {
   UsersList userList;

    public Server() {
        initComponents();
    }

    private void initComponents() {

        setResizable(false);
        setSize(new Dimension(515, 652));

        WindowListener exitListener = new WindowAdapter() {

            public void windowClosing(WindowEvent e) {
                int confirm = JOptionPane.showOptionDialog(
                        null, "Are You Sure to Close Application?",
                        "Exit Confirmation", JOptionPane.YES_NO_OPTION,
                        JOptionPane.QUESTION_MESSAGE, null, null, null);
                if (confirm == 0) {
                    broadcast(new Message("Server","i'm dead",-1,new String[0]));
                    System.exit(0);
                }
            }
        };
        addWindowListener(exitListener);

        try {
            ipTextField.setText(InetAddress.getLocalHost().getHostAddress());
            portTextField.setText("5000");
        }catch(Exception e) {}

        ipTextField.setEditable(false);
        portTextField.setEditable(false);

        sendButton.addActionListener(new sendButtonListener());

        GroupLayout layout = new GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                                .addComponent(messageScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 440, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                        .addGroup(layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                        .addGroup(layout.createSequentialGroup()
                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                                        .addGroup(layout.createSequentialGroup()
                                                                                .addComponent(ipLabel)
                                                                                .addGap(18, 18, 18)
                                                                                .addComponent(ipTextField))
                                                                        .addGroup(layout.createSequentialGroup()
                                                                                .addComponent(portLabel)
                                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                                                .addComponent(portTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                                                .addGap(0, 0, Short.MAX_VALUE))
                                                        .addComponent(chatScPane))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                        .addComponent(onlineUsersScPane)
                                                        .addComponent(onlineUsersLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                                .addContainerGap())
        );
        layout.setVerticalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(ipLabel)
                                        .addComponent(ipTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(onlineUsersLabel))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addGroup(layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                        .addComponent(portLabel)
                                                        .addComponent(portTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(chatScPane))
                                        .addComponent(onlineUsersScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 400, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(messageScPane, javax.swing.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE)
                                        .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addContainerGap())
        );
        try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception ex) {}
        pack();
        //setVisible(true);
    }

    public class ClientHandler implements Runnable {
        Client client;

        public ClientHandler(Client c) {
            client = c;
        }

        public void run() {
            try{
                while((message = (Message) client.getThisObjectInputStream().readObject())!=null) {
                    if(message.getTypeOfMessage()==1) {
                        client.setUsername(message.getUsername());
                        if(!userList.addUser(client)) {
                            client.getThisObjectOutputStream().writeObject(new Message("Server","User with this nickname already connected",-1));
                            client.getThisObjectOutputStream().close();
                            client.getThisObjectInputStream().close();
                            break;
                        }
                    }else if(message.getTypeOfMessage()==2) {
                        userList.deleteUser(client);
                        broadcast(new Message("Server",message.getUsername()+" "+message.getMessage(),0,userList.getUsernameList()));
                        setOnlineUsers();
                        chatTextArea.append("["+message.getUsername()+"]" + ": " + message.getMessage()+"\n");
                        break;
                    }
                    setOnlineUsers();
                    broadcast(new Message(message.getUsername(),message.getMessage(),message.getTypeOfMessage(),userList.getUsernameList()));
                    chatTextArea.append("["+message.getUsername()+"]" + ": " + message.getMessage()+"\n");
                }
            }catch(Exception e) {
            }
        }
    }
    private void broadcast(Message message) {
        for(Client client:userList.getUsers()) {
            try {
                client.getThisObjectOutputStream().writeObject(message);
            }catch(Exception e) {
            }
        }
    }

    public void startServer() {
        try {
            userList = new UsersList();
            setVisible(true);
            repaint();
            ServerSocket socketListener = new ServerSocket(5000);
            while(true) {
                Socket clientSocket = socketListener.accept();
                Client client = new Client(clientSocket);
                Thread t = new Thread( new ClientHandler(client));
                t.start();
            }
        }catch(Exception e) {

        }
    }
    public class sendButtonListener implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            Message message = new Message("Server",messageTextArea.getText(),0,userList.getUsernameList());
            messageTextArea.setText("");
            messageTextArea.requestFocus();
            broadcast(message);
            chatTextArea.append("["+message.getUsername()+"]" + ": " + message.getMessage()+"\n");
        }
    }

    public void setOnlineUsers () {
        onlineUsersTextArea.setText("");
        for (Client user : userList.getUsers()) {
            onlineUsersTextArea.append(user.getUsername() + "\n");
        }
    }
    public static void main(String args[]) {
        new Server();
    }
}
