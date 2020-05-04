/* Average.java implements a grade average function using a switch
 * statement
 *
 * CS 214 Proj 03 by Duncan Van Keulen
 * On 2-20-2020
 ****************************************************************/

import java.util.Scanner;

public class Average {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your average: "); // prompt for avg

      // Make sure the user enters an integer
      try {
         int average = Integer.parseInt(keyboard.next()); // read avg
         System.out.println(letterGrade(average)); // display letter grade
      }
      catch (Exception e) {
         System.out.println("Error, you must enter an integer");
         main(null);
      }
      
   }
   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: average, an int
    * PRE: average (input) is an int
    * Return: the letter grade corresponding to the entered average
    */

   public static char letterGrade(int average) {
      switch (average / 10) {
      case 10:
      case 9:
         return 'A';
      case 8:
         return 'B';
      case 7:
         return 'C';
      case 6:
         return 'D';
      default:
         return 'F';
      }
   }
}
