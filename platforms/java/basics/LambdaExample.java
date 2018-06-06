import java.util.List;
import java.util.ArrayList;
import java.util.stream.Stream;

public class LambdaExample {
    
    public static void main(String[] args) {
        List<String> names = new ArrayList<>(){{
            add("Alex");
            add("Mike"); 
            add("Peter"); 
            add("James");
        }};
        names.stream().forEach((String name) -> {
            System.out.println(name);
        });
        names.stream().forEach((name) -> {
            System.out.println(name);
        });
        names.stream().forEach(name -> System.out.println(name));

        Stream<String> stream = names.stream();
        Stream<String> res = stream.filter((String name) -> { 
            return name.equals("Alex");
        });

        res.forEach(name -> System.out.println(name));
    }
}


