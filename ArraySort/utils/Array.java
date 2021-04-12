package utils;

public class Array {
    public static void printArray(int[] t) {
        int len = t.length;
        System.out.print("[");
        if (len >= 1) {
            System.out.print(t[0]);
        }
        for (int i = 1; i < len; i++) {
            System.out.print(", " + t[i]);
        }
        System.out.println("]");
        
    }

    public static void printArray(String[] t) {
        int len = t.length;
        System.out.print("[");
        if (len >= 1) {
            System.out.print(t[0]);
        }
        for (int i = 1; i < len; i++) {
            System.out.print(", " + t[i]);
        }
        System.out.println("]");
    }

    public static int[] genArray(int size) {
        int[] t = new int[size];
        for (int i = 0; i < t.length; i++) {
            t[i] = (int) (Math.random() * 20001);
        }

        return t;
    }

    public static int findMax(int[] t, int n) {
        int max = t[0];
        int iMax = 0;
        for (int i = 1; i < n; i++) {
            if (max < t[i]) {
                max = t[i];
                iMax = i;
            }
        }
        return iMax;
    }

    public static void sort(int[] t) {
        for (int i = t.length; i > 0; i--) {
            int iMax = findMax(t, i);
            int tmp = t[i - 1];
            t[i - 1] = t[iMax];
            t[iMax] = tmp;
        }
    }
}