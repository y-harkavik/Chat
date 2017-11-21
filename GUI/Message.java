import java.sql.Time;
import java.util.Calendar;
import java.util.Date;

public class Message {

    private String username;
    private String message;
    private String[] users;
    private int typeOfMessage; //1 - connect 0 -usual 2 - disconnect

    public Message(String username,String message, int typeOfMessage) {
        this.username = username;
        this.message = message;
        this.typeOfMessage = typeOfMessage;
    }

    public Message(String username, String message, String[] users) {
        this.username = username;
        this.message = message;
        this.users = users;
    }

    public void setOnlineUsers(String[] users) {
        this.users = users;
    }

    public String getUsername() {
        return this.username;
    }

    public String getMessage() {
        return this.message;
    }

    public String[] getUsers() {
        return this.users;
    }

    public int getTypeOfMessage() {
        return typeOfMessage;
    }
}
