import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CommonGUI extends JFrame{
    JScrollPane chatScPane;
    JTextArea chatTextArea;
    JTextField ipTextField;
    JLabel ipLabel;
    JScrollPane messageScPane;
    JTextArea messageTextArea;
    JLabel onlineUsersLabel;
    JScrollPane onlineUsersScPane;
    JTextArea onlineUsersTextArea;
    JTextField portTextField;
    JLabel portLabel;
    JButton sendButton;
    Message message;
    public CommonGUI() {
        ipLabel = new JLabel();
        onlineUsersLabel = new JLabel();
        portLabel = new JLabel();
        ipTextField = new JTextField();
        portTextField = new JTextField();
        sendButton = new JButton();
        chatScPane = new JScrollPane();
        chatTextArea = new JTextArea();
        onlineUsersScPane = new JScrollPane();
        onlineUsersTextArea = new JTextArea();
        messageScPane = new JScrollPane();
        messageTextArea = new JTextArea();

        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setTitle("Chat");
        setAutoRequestFocus(false);
        setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
        setResizable(false);

        ipLabel.setFont(new Font("Arial", 0, 12));
        ipLabel.setText("IP");

        onlineUsersLabel.setFont(new Font("Arial", 0, 12));
        onlineUsersLabel.setHorizontalAlignment(SwingConstants.CENTER);
        onlineUsersLabel.setText("Online Users");

        portLabel.setFont(new Font("Arial", 0, 12));
        portLabel.setText("Port");

        sendButton.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        sendButton.setText("Send");
        sendButton.setCursor(new Cursor(Cursor.HAND_CURSOR));

        chatTextArea.setEditable(false);
        chatTextArea.setColumns(20);
        chatTextArea.setRows(5);
        chatScPane.setViewportView(chatTextArea);

        onlineUsersTextArea.setEditable(false);
        onlineUsersTextArea.setColumns(20);
        onlineUsersTextArea.setLineWrap(true);
        onlineUsersTextArea.setRows(5);
        onlineUsersScPane.setViewportView(onlineUsersTextArea);

        messageTextArea.setColumns(20);
        messageTextArea.setFont(new Font("Arial", 0, 14)); // NOI18N
        messageTextArea.setLineWrap(true);
        messageTextArea.setRows(5);
        messageTextArea.setToolTipText("");
        messageTextArea.setCursor(new Cursor(Cursor.TEXT_CURSOR));
        messageScPane.setViewportView(messageTextArea);

    }

}
