import java.util.Scanner;
import utils.*;
import utils.time.*;

public class Main {
    public static void main(String[] args) {
        StopWatch c = new StopWatch();
        c.start();

        System.out.print("\n" + "Date: ");
        Time.print();

        Scanner scn = new Scanner(System.in);
        System.out.print("\n" + "Please input a Number between 1 and 20000 for set the Array size: ");
        int size = scn.nextInt();

        if (size > 20001) {
            System.out.println("Please input an lower Integer");
        }

        else {

            System.out.println("\n" + "This is tool for generate and sort an Array: " + "\n");

            int[] t = Array.genArray(size);
            Array.sort(t);
            int iMax = Array.findMax(t, t.length);
            Array.printArray(t);

            System.out.println("Max int: " + t[iMax] + "# Index: " + iMax);

            c.stop();
            System.out.println("\n" + "Total program run time: " + c);

        }
    }
}
