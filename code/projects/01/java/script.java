Script started on 2020-02-06 14:57:13-0500
]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ cat RectangleArea.
cat: RectangleArea.: No such file or directory
]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ cat RectangleArea.java 
/* RectangleArea.java computes the area of a rectangle.
 *
 * Input: The width and height of a rectangle
 * Precondition: Width/height are not negative numbers
 * Output: The area of a rectangle
 *
 * Based off of CS214 Lab01 : Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Duncan Van Keulen 
 * Date: 2-6-2020
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function rectangleArea() computes a rectangle's area, given its height and width.
      * Parameter: height, a double
      * Parameter: width, a double
      * Precondition: height/width is not negative
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double height, double width) {
        return height * width;              // return an expression
     } // rectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its height: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the height from the user
      double height = keyboard.nextDouble();

      System.out.print(" enter its width: ");
      
      //Get the width number from the user
      double width = keyboard.nextDouble();

      //Close the keyboard scanner (good practice)
      keyboard.close();

      // output area
      System.out.println("\nThe area is " + rectangleArea(height, width) + "\n");
  } // main method

} // class RectangleArea]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ javac -deprecation RectangleArea.java 
]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ java RectangleArea 


To compute the area of a rectangle,
 enter its height: 2
 enter its width: 1

The area is 2.0

]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ java RectangleArea 


To compute the area of a rectangle,
 enter its height: 5.5
 enter its width: 10.5

The area is 57.75

]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ java RectangleArea 


To compute the area of a rectangle,
 enter its height: .5
 enter its width: 3

The area is 1.5

]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ java RectangleArea 


To compute the area of a rectangle,
 enter its height: 2
 enter its width: 2 8.9999

The area is 17.9998

]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ Sweet!
Sweet!: command not found
]0;djv78@gold01: ~/214/projects/01/java[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/java[00m$ exit

Script done on 2020-02-06 14:58:28-0500
