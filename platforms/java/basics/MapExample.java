import java.util.List;
import java.util.ArrayList;
import java.util.stream.Stream;
import java.util.stream.IntStream;

public class MapExample {
    
    public static void main(String[] args) {
        List<Integer> numbers = new ArrayList<>(){{
            add(1);
            add(2); 
            add(3); 
            add(4);
            add(5);
        }};
        Stream<Integer> stream = numbers.stream();
        IntStream squares = stream.mapToInt(num -> num*num);
        int sum = squares.sum();
        System.out.println(sum);
    }
}
