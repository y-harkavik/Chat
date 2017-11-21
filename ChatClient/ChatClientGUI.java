import com.sun.org.apache.xml.internal.security.c14n.implementations.Canonicalizer20010315ExclWithComments;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.ArrayList;

public class ChatClientGUI extends CommonGUI {
    private JButton connectButton;
    private JButton disconnectButton;
    private JTextField usernameField;
    private JLabel usernameLabel;
    private Message message;

    String username;
    Socket socket;
    ObjectOutputStream objectOutputStream;
    ObjectInputStream objectInputStream;
    String[] userList;
    Boolean isConnected = false;


    public ChatClientGUI() {
        initComponents();
    }

    private void initComponents() {

        usernameLabel = new JLabel();
        usernameField = new JTextField();
        connectButton = new JButton();
        disconnectButton = new JButton();

        setSize(new Dimension(0, 0));

        portTextField.setText("5000");
        portTextField.setEditable(false);

        usernameLabel.setFont(new Font("Arial", 0, 12));
        usernameLabel.setText("Username");

        connectButton.setFont(new Font("Arial", 0, 12)); // NOI18N
        connectButton.setText("Connect");
        connectButton.setCursor(new Cursor(Cursor.HAND_CURSOR));
        connectButton.addActionListener(new connectButtonListener());

        sendButton.addActionListener(new sendButtonListener());


        disconnectButton.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        disconnectButton.setText("Disconnect");
        disconnectButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        disconnectButton.addActionListener(new disconnectionButtonListener());

        GroupLayout layout = new GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(messageScPane)
                                        .addComponent(chatScPane)
                                        .addGroup(layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                                        .addGroup(layout.createSequentialGroup()
                                                                .addComponent(usernameLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                                .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                        .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                                        .addComponent(ipLabel)
                                                                        .addComponent(portLabel))
                                                                .addGap(52, 52, 52)
                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                                        .addComponent(ipTextField)
                                                                        .addComponent(portTextField))))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(connectButton, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addComponent(disconnectButton, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(onlineUsersLabel, javax.swing.GroupLayout.DEFAULT_SIZE, 185, Short.MAX_VALUE)
                                        .addComponent(onlineUsersScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                                        .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addGap(13, 13, 13)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                        .addComponent(disconnectButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                        .addComponent(connectButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                        .addGroup(layout.createSequentialGroup()
                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                                        .addComponent(usernameLabel)
                                                                        .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                                        .addComponent(ipLabel)
                                                                        .addComponent(ipTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                                        .addComponent(portLabel)
                                                                        .addComponent(portTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(chatScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 323, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addComponent(messageScPane))
                                        .addGroup(layout.createSequentialGroup()
                                                .addComponent(onlineUsersLabel)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addComponent(onlineUsersScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, 93, Short.MAX_VALUE)))
                                .addContainerGap())
        );

        pack();
    }

    private void setUpNetworking() throws ConnectException{
        try {
            socket = new Socket(getIP(),getPORT());
            objectInputStream = new ObjectInputStream(socket.getInputStream());
            objectOutputStream = new ObjectOutputStream(socket.getOutputStream());
            sendMessage(new Message(username,"has been connected\n",1));
            Thread threadListener = new Thread(new IncomingReader());
            threadListener.start();
        }catch(IOException e) {
            throw new ConnectException();
        }
    }
    public  class IncomingReader implements Runnable {
        public void run() {
            try{
                while((message = (Message) objectInputStream.readObject())!=null) {
                    if(message.getTypeOfMessage()!=0) {
                        onlineUsersTextArea.setText("");
                        userList = message.getUsers();
                        for (String user : userList) {
                            onlineUsersTextArea.append(user + "\n");
                        }
                    }
                    chatTextArea.append("["+message.getUsername()+"]" + ": " + message.getMessage());
                }
            }catch(Exception e) {}
        }
    }

    private String getIP() {
        return ipTextField.getText();
    }

    private int getPORT() {
        return Integer.parseInt(portTextField.getText());
    }

    public class connectButtonListener implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            if(socket.isConnected()) {
                try {
                    setUpNetworking();
                    setStateOfField(true);
                } catch (ConnectException a) {
                    chatTextArea.append("Connect error\n");
                    //a.printStackTrace();
                }
            }
        }
    }
    public class sendButtonListener implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            if(socket.isConnected()) {
                sendMessage(new Message(username,messageTextArea.getText(),0));
            }
                messageTextArea.setText("");
            messageTextArea.requestFocus();
        }
    }

    public class disconnectionButtonListener implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            if(socket.isConnected()) {
                try {
                    sendMessage(new Message(username,"has been disconnected\n",2));
                    socket.close();
                    setStateOfField(true);
                    onlineUsersTextArea.setText("");
                }catch (Exception f) {

                }
            }
        }
    }
    public void sendMessage(Message message) {
            try {
                objectOutputStream.writeObject(message);
            } catch (IOException ex) {
                chatTextArea.append("Error\n");
            }
    }
    public void setStateOfField(boolean state) {
        ipTextField.setEditable(state);
        portTextField.setEditable(state);
        usernameField.setEditable(state);
    }
    public static void main(String args[]) {
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ChatClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ChatClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ChatClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ChatClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ChatClientGUI().setVisible(true);
            }
        });
    }
}
