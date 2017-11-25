import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.*;

public class UsersList {

    private HashSet<Client> onlineUsers = new HashSet<Client>();

    public boolean addUser(Client client) {
        return onlineUsers.add(client);
    }

    public void deleteUser(Client client) {
       /* Iterator<Client> iterator = onlineUsers.iterator();
        while (iterator.hasNext()) {
            Client c = iterator.next();
            if(username==c.getUsername()) {
                try {
                    c.getThisObjectOutputStream().close();
                    c.getThisObjectInputStream().close();
                    c.getSocket().close();
                    onlineUsers.remove(c);
                    break;
                }catch(Exception ex) {}
            }
        }*/
       onlineUsers.remove(client);
    }

    public ArrayList<Client> getUsers() {
        Iterator<Client> iterator = onlineUsers.iterator();
        ArrayList<Client> users = new ArrayList<Client>();
        while (iterator.hasNext()) {
            users.add(iterator.next());
        }
            return users;
    }

    public String[] getUsernameList() {
        Iterator<Client> iterator = onlineUsers.iterator();
        ArrayList<String> users = new ArrayList<String>();
        while (iterator.hasNext()) {
            users.add(iterator.next().getUsername());
        }
        return users.toArray(new String[0]);
    }
}