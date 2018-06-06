import java.util.List;
import java.util.ArrayList;
import java.util.stream.Stream;
import java.util.stream.Collectors;


public class FilterExample {
    
    public static void main(String[] args) {
        List<Integer> numbers = new ArrayList<>();
        for(int i = 0; i < 100; i++)
            numbers.add(i);

        Stream<Integer> even = numbers.stream()
            .filter(num -> num % 2 == 0);

        Stream<Integer> odd = numbers.stream()
            .filter(num -> num % 2 != 0);


        System.out.println("Even numbers from 0 to 100:");
        System.out.println(even.collect(Collectors.toList()));

        System.out.println("Odd numbers from 0 to 100:");
        System.out.println(odd.collect(Collectors.toList()));
    }
}
