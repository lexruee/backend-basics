import java.util.List;
import java.util.ArrayList;
import java.util.stream.Stream;

public class SortedExample {
    
    public static void main(String[] args) {
        List<String> names = new ArrayList<>(){{
            add("Mike"); 
            add("Peter"); 
            add("James");
            add("Alex");
        }};

        Stream<String> sortedNames = names.stream().sorted();
        sortedNames.forEach((String name) -> {
            System.out.println(name);
        });
    }
}
