/* ArrayUtil.java is a driver for proj06 array utilites.
 *
 * Student Name: Duncan Van Keulen
 * Date: 3-12-2020
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;
import java.util.Scanner;

public class ArrayUtil {
    public static void main (String[] args) {
        
        Scanner keyboard = new Scanner(System.in);
        
        // Prompt user for array size and set size to it
        System.out.print("How values in the array?: ");
        int size = keyboard.nextInt();
        
        double[] theArray = new double[size];

        System.out.println("Enter the values of the array: ");
        readArray(theArray, keyboard);

        System.out.println("The values of the array are: ");
        printArray(theArray, size);

        keyboard.close();
    }
    /*
   * printArray() prints out the values in an array separated by new lines
   * anArray: The double array to be printed
   * itsSize: An integer representing the size of the array
   *****************************************************/
    public static void printArray(double[] anArray, int itsSize) {
        for (int i = 0; i < itsSize; i++) {
            System.out.println(anArray[i] + "\n");
        }
    }
    
    /*
   * readArray() reads in the values in an array
   * anArray: The double array to be filled with values
   * Scanner in: The scanner to read values into the array
   *****************************************************/
    public static void readArray(double[] anArray, Scanner in) {
        for (int i = 0; i < anArray.length; i++) {
            anArray[i] = in.nextDouble();
        }
    }
}
