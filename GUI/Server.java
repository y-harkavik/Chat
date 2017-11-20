import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;

public class Server {

    private static UsersList list = new UsersList();

    public static void main(String[] args) {
        try {
            //Создаем слушатель
            ServerSocket socketListener = new ServerSocket(1234);

            while (true) {
                Socket client = null;
                while (client == null) {
                    client = socketListener.accept();
                }
            }
        } catch (SocketException e) {
            System.err.println("Socket exception");
            e.printStackTrace();
        } catch (IOException e) {
            System.err.println("I/O exception");
            e.printStackTrace();
        }
    }

    public synchronized static UsersList getUserList() {
        return list;
    }


}