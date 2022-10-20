public class StringArrayTest {
    public static List<String> generateStringArray(Integer i) {
        List<String> teste = new List<String>();
        Integer n = i;
        for (n = 0; n < i ; n ++) {
            teste.add('Test ' + n);
            System.debug(teste[n]);
        }
        return teste;
    }
}