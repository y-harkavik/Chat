import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MenuGUI extends JFrame {

    private JRadioButton clientRadioButton;
    private JRadioButton serverRadioButton;
    private JButton startButton;
    private  ButtonGroup buttonGroup;

    public MenuGUI() {
        initComponents();
        setVisible(true);
        setLocationRelativeTo(null);
    }

    private void initComponents() {

        serverRadioButton = new JRadioButton();
        clientRadioButton = new JRadioButton();
        startButton = new JButton();

        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setResizable(false);

        buttonGroup = new ButtonGroup();
        buttonGroup.add(serverRadioButton);
        buttonGroup.add(clientRadioButton);

        serverRadioButton.setText("Server");
        serverRadioButton.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        clientRadioButton.setText("Client");
        clientRadioButton.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        startButton.setText("Start");
        startButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if(serverRadioButton.isSelected()){
                Thread t = new Thread(new Runnable() {
                    public void run() {
                        setVisible(false);
                        new Server().startServer();
                    }
                });
                t.start();
            } else if(clientRadioButton.isSelected()) {
                    setVisible(false);
                    new ChatClient();
                }
            }
        });

        GroupLayout layout = new GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(startButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(clientRadioButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(serverRadioButton, javax.swing.GroupLayout.DEFAULT_SIZE, 153, Short.MAX_VALUE))
                                .addContainerGap())
        );
        layout.setVerticalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addGap(26, 26, 26)
                                .addComponent(clientRadioButton, javax.swing.GroupLayout.PREFERRED_SIZE, 18, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(serverRadioButton)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(startButton, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addContainerGap(56, Short.MAX_VALUE))
        );
        pack();
    }

    public static void main(String args[]) {
        new MenuGUI();
    }
}
