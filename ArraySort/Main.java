import java.util.Scanner;
import utils.*;

public class Main {
    public static void main(String[] args) {

        System.out.println("\n" + "This is tool for generate and sort an Array: " + "\n");

        int[] t = Array.genArray(20);
        Array.sort(t);
        Array.findMax(t, t.length);
        Array.printArray(t);
    }
}
