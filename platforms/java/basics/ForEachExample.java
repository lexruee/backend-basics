import java.util.List;
import java.util.ArrayList;
import java.util.stream.Stream;

public class ForEachExample {
    
    public static void main(String[] args) {
        List<String> names = new ArrayList<>(){{
            add("Alex");
            add("Mike"); 
            add("Peter"); 
            add("James");
        }};

        for(String name : names) {
            System.out.println(name);
        }
 
        Stream<String> stream = names.stream();
        stream.forEach((String name) -> {
            System.out.println(name);
        });

        stream = names.stream();
        stream.forEach((name) -> {
            System.out.println(name);
        });
        
        stream = names.stream();
        stream.forEach(name -> System.out.println(name));
    }
}
