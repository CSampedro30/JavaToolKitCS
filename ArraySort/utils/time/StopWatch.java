package utils.time;
import java.util.concurrent.TimeUnit;

public class StopWatch {
    private long start;
    private long now;

    public StopWatch() {

    }

    public void start() {
        start = System.currentTimeMillis();
    }

    public void stop() {
        now = System.currentTimeMillis();
    }

    public String toString() {
        long delta = now - start;
        long deltaS = delta / 1000;
        long deltaMS = delta % 1000;
        return deltaS + "." + String.format("%03d", deltaMS) + "s";
    }
}
