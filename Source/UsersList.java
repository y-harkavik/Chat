import java.util.*;

public class UsersList {

    private HashSet<Client> onlineUsers;

    public UsersList() {
        onlineUsers = new HashSet<Client>();
    }
    public boolean addUser(Client client) {
        return onlineUsers.add(client);
    }

    public void deleteUser(Client client) {
        try {
            client.getThisObjectInputStream().close();
            client.getThisObjectOutputStream().close();
            onlineUsers.remove(client);
        }catch(Exception ex){
            ex.printStackTrace();
        }
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