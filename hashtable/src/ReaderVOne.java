import java.io.*;
import java.util.*;

public class ReaderVOne {


    public static void main(String[] args) throws IOException {

        BufferedReader reader = new BufferedReader(new FileReader("resources/news.txt"));
        BufferedReader readUselessWords = new BufferedReader(new FileReader("resources/stopwords.txt"));
        String str;
        String strg = null;
        Hashtable<String, Integer> htb = new Hashtable<>();
        Hashtable<String, Integer> ht = new Hashtable<>();
        while ((strg = readUselessWords.readLine()) != null) {
            htb.put(strg, 1);
        }
        while ((str = reader.readLine()) != null) {
            String[] arr = str.toLowerCase().split("[^A-zÀ-ú0-9]+");
            for (String word : arr) {

                if (!htb.containsKey(word) && !word.equals("")) {
                    if (ht.containsKey(word)) {
                        int counter = ht.get(word);
                        counter++;
                        ht.put(word, counter);
                    } else {
                        ht.put(word, 1);
                    }
                }

            }
        }

        List<Map.Entry<String, Integer>> list = new ArrayList<>(ht.entrySet());
        list.sort(Map.Entry.comparingByValue());

        System.out.println(ht);
        // System.out.println(list.get(list.size() - 1));
        // System.out.println(list.get(list.size() - 2));
        // System.out.println(list.get(list.size() - 3));
    }
}
