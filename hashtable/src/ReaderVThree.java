import java.io.*;
import java.util.*;

public class ReaderVThree implements Serializable {


    public static void main(String[] args) throws IOException, ClassNotFoundException {

        BufferedReader readUselessWords = new BufferedReader(new FileReader("resources/stopwords.txt"));
        Scanner scn = new Scanner(System.in);
        String str;
        String strg;
        File files = new File("resources/corpus/");
        String[] paths = files.list();
        System.out.println(Arrays.toString(paths));
        Hashtable<String, ArrayList<String>> ht = new Hashtable<>();
        Hashtable<String, Integer> htb = new Hashtable<>();


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
                        if (!ht.containsKey(word)) {
                            ArrayList<String> listPaths = new ArrayList<>();
                            listPaths.add(path);
                            ht.put(word, listPaths);
                        } else {
                            ArrayList<String> listPath = ht.get(word);
                            if (!listPath.contains(path)) {
                                listPath.add(path);
                            }
                        }
                    }
                }
            }
        }

        File f = new File("resources/index.ser");

        if (f.exists()) {
            final FileInputStream fis = new FileInputStream("resources/index.ser");
            ObjectInputStream ois = new ObjectInputStream(fis);
            ht = (Hashtable<String, ArrayList<String>>) ois.readObject();
            fis.close();
            ois.close();
            System.out.println(ht);
            System.out.println("Deserialization success.");
        } else {
            final FileOutputStream fos = new FileOutputStream("resources/index.ser");
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(ht);
            fos.close();
            oos.close();
            System.out.println("Serialization success.");
        }
        String scan = scn.nextLine();

    }
}