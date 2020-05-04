/* Factorial.java outputs n! of the input number
 *
 * Input: double n
 * Output: The factorial of the number
 * Duncan Van Keulen on 2-27-2020
 ********************************************************/
import java.util.Scanner;

class Factorial {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);
        System.out.print("Enter a number: ");
        double n; double answer = 1.0;

        n = keyboard.nextDouble();

        // Loop from 2 to n, multiplying each time to calculate factorial
        for(int i = 2; i <= n; i++) {
            answer *= i;
        } 
        System.out.println(n + "! = " + answer);
    }
}