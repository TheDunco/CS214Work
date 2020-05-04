Script started on 2020-02-06 13:45:36-0500
]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ cat cir[K[K[KCircleArea.java 
/* CircleArea.java computes the area of a circle.
 *
 * Input: The radius of the circle.
 * Precondition: The radius is a positive number.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Duncan Van Keulen 
 * Date: 2-6-2020
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class CircleArea {

     /* function circleArea() computes a circle's area, given its radius.
      * Parameter: r, a double
      * Precondition: r is not negative.
      * Returns: the area of the circle
      */
     public static double circleArea(double r) {
        return Math.PI * r * r;               // return an expression
     } // circleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("\n\nTo compute the area of a circle,");
      System.out.print(" enter its radius: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double radius = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + circleArea(radius) + "\n");
      System.out.printf("The area is %f\n\n", circleArea(radius));
      System.out.printf("The area is %.15f\n\n", circleArea(radius)); // %.15 controls # of decimal places
  } // main method

} // class CircleArea]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ jvac [K[K[K[K[Kjavac -deprecation CircleArea.java 
]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ java[K[K[K[Kjava CircleArea 


To compute the area of a circle,
 enter its radius: 1

The area is 3.141592653589793

The area is 3.141593

The area is 3.141592653589793

]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ java CircleArea 


To compute the area of a circle,
 enter its radius: 2

The area is 12.566370614359172

The area is 12.566371

The area is 12.566370614359172

]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ java CircleArea 2.5


To compute the area of a circle,
 enter its radius: ^[[A    2.5

The area is 19.634954084936208

The area is 19.634954

The area is 19.634954084936208

]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ java CircleArea 4.99999


To compute the area of a circle,
 enter its radius: 4.99999

The area is 78.53950218079365

The area is 78.539502

The area is 78.539502180793650

]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ First java program yay! J[KHi [K[K[K[K - Hi C[KHyechan if y[Kyou're grading htis[K[K[K[Kthis
> ^C
]0;djv78@gold01: ~/214/labs/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/java[00m$ exit

Script done on 2020-02-06 13:47:22-0500
