package loggingpoc;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public final class LoggerPoc {

    private static final Logger log = LogManager.getLogger(LoggerPoc.class);

    public static void main(String[] args) {
        log.info("OS Name: {}, OS Version: {}, OS Arch: {}",
              System.getProperty("os.name"),
              System.getProperty("os.version"),
              System.getProperty("os.arch"));

        log.info("Java vendor: {}, Java vendor url: {}, Java version: {}, Java home: {}",
              System.getProperty("java.vendor"),
              System.getProperty("java.vendor.url"),
              System.getProperty("java.version"),
              System.getProperty("java.home"));

        log.info("-----------------------------------------------------------------------");
    }
}
