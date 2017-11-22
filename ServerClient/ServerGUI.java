import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;

public class ServerGUI extends CommonGUI {
   ArrayList<Client> userList;

    public ServerGUI() {
        initComponents();
    }

    private void initComponents() {


        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);
        setSize(new Dimension(515, 652));


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
        this.startServer();
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
                        onlineUsersTextArea.setText("");
                        for (Client user : userList) {
                            onlineUsersTextArea.append(user.getUsername() + "\n");
                        }
                        broadcast(message);
                    }
                    chatTextArea.append("["+message.getUsername()+"]" + ": " + message.getMessage()+"\n");
                }
            }catch(Exception e) {

            }
        }
    }
    private void broadcast(Message message) {
        for(Client client:userList) {
            try {
                client.getThisObjectOutputStream().writeObject(message);
            }catch(Exception e) {

            }
        }
    }

    public void startServer() {
        try {
            this.setVisible(true);
            userList = new ArrayList<Client>();
            ServerSocket socketListener = new ServerSocket(5000);
            while(true) {
                Socket clientSocket = socketListener.accept();
                Client client = new Client(clientSocket);
                userList.add(client);
                Thread t = new Thread( new ClientHandler(client));
                t.start();
            }
        }catch(Exception e) {

        }
    }
    public class sendButtonListener implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            Message message = new Message("Server",messageTextArea.getText());
            messageTextArea.setText("");
            messageTextArea.requestFocus();
            broadcast(message);
        }
    }

    public static void main(String args[]) {
        new ServerGUI().setVisible(true);
        try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ServerGUI().setVisible(true);
            }
        });
    }
}
