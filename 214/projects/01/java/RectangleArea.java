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

} // class RectangleArea