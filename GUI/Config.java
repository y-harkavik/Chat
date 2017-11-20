import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Properties;

public class Config {
    private static final String PROPERTIES_FILE = "./server.properties";

    private static  String IP;
    public static int PORT;
    public static String HELLO_MESSAGE;

    static {
        Properties properties = new Properties();
        FileInputStream propertiesFile = null;

        try {
            propertiesFile = new FileInputStream(PROPERTIES_FILE);
            properties.load(propertiesFile);
            IP = InetAddress.getLocalHost().getHostAddress();
            PORT             = Integer.parseInt(properties.getProperty("PORT"));
            HELLO_MESSAGE    = properties.getProperty("HELLO_MESSAGE");

        } catch (FileNotFoundException ex) {
            System.err.println("Properties config file not found");
        } catch (IOException ex) {
            System.err.println("Error while reading file");
        } finally {
            try {
                propertiesFile.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
    }
}