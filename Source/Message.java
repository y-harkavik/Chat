import java.io.Serializable;


public class Message implements Serializable{

    private String username;
    private String message;
    private String[] users;
    private int typeOfMessage; //1 - connect 0 -usual 2 - disconnect

    public Message(String username,String message, int typeOfMessage,String[] users) {
        this.username = username;
        this.message = message;
        this.typeOfMessage = typeOfMessage;
        this.users = users;
    }

    public Message(String username, String message, int typeOfMessage) {
        this.username = username;
        this.message = message;
        this.typeOfMessage = typeOfMessage;
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
