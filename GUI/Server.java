import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;

public class Server {


    private static UsersList list = new UsersList();

        Socket sock;

        public ClientHandler(Socket clientSocket) {
            try {
                sock = clientSocket;
            }catch (Exception ex) {ex.printStackTrace();}
        }
        public void run() {
            String message;
            try {
                while(=null) {
                    System.out.println("read "+message);
                    tellEveryone(message);
                }
            }catch (Exception ex) {ex.printStackTrace();}
        }
    }

    public static void main(String[] args) {
        try {
            //Создаем слушатель
            ServerSocket socketListener = new ServerSocket(1234);
            while (true) {
                while (true) {
                    Socket clientSocket = socketListener.accept();

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

    public void tellEveryone(String message) {
        /*Iterator it = clientOutputStreams.iterator();
        while (it.hasNext()) {
            try{
                PrintWriter writer = (PrintWriter) it.next();
                writer.println(message);
                writer.flush();
            }catch (Exception ex){ex.printStackTrace();}
        }*/
    }

    public synchronized static UsersList getUserList() {
        return list;
    }
}