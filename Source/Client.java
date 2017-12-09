import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

public class Client {
    private String username;
    private ObjectOutputStream oos;
    private ObjectInputStream ois;

    public boolean equals(Object aClient) {
        Client a =(Client) aClient;
        return getUsername().equals(a.getUsername());
    }

    public int hashCode() {
        return username.hashCode();
    }

    public Client(Socket socket){
        try {
            this.oos = new ObjectOutputStream(socket.getOutputStream());
            this.ois = new ObjectInputStream(socket.getInputStream());
        }catch(Exception e) {
            e.printStackTrace();
        }
    }

    public ObjectOutputStream getThisObjectOutputStream() {
        return this.oos;
    }

    public ObjectInputStream getThisObjectInputStream() {
        return this.ois;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}