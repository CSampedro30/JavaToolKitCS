import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

public class ReaderVTwo {


    public static void main(String[] args) throws IOException {


        BufferedReader readUselessWords = new BufferedReader(new FileReader("resources/stopwords.txt"));
        String str;
        String strg = null;
        File files = new File("resources/corpus/");
        String[] paths = files.list();
        System.out.println(Arrays.toString(paths));

        Hashtable<String, Integer> htb = new Hashtable<>();
        Hashtable<String, Integer> ht = new Hashtable<>();
        while ((strg = readUselessWords.readLine()) != null) {
            htb.put(strg, 1);
        }
        assert paths != null;
        for (String path : paths) {
            BufferedReader reader = new BufferedReader(new FileReader("resources/corpus/" + path));

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
        }
        List<Map.Entry<String, Integer>> list = new ArrayList<>(ht.entrySet());
        list.sort(Map.Entry.comparingByValue());
        System.out.println(ht);
    }
}
