/* Roots.java is a method and driver for finding the roots of a 
 * quadratic equation using the quadratic formula.
 * 
 * By: Duncan Van Keulen on 3-6-2020
 ***************************************************************/

import java.util.Scanner;
import java.lang.Math;

public class Roots {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        // Get inputs for a, b, c
        System.out.print("Quadratic Root Finder\nEnter a: ");
        double a = keyboard.nextDouble();

        System.out.print("Enter b: ");
        double b = keyboard.nextDouble();

        System.out.print("Enter c: ");
        double c = keyboard.nextDouble();

        double[] rootsArr = new double[2];

        // Only display roots if they are valid
        if (root(a, b, c, rootsArr)) {
            System.out.println("The roots are " + rootsArr[0] + " and " + rootsArr[1]);
        }
    }

    /*
     * root() calculates the quadratic roots of an equation using the quadratic
     * formula will return true if calculation succeeded and false if it failed.
     * double a, b, c are the a, b, c numbers in the quadratic formula double[]
     * rootsArr is the "pass by reference" array that will contain the roots
     *******************************************************************************/
    public static boolean root(double a, double b, double c, double[] rootsArr) {
        if (a != 0) {
            double arg = Math.pow(b, 2.0) - 4 * a * c;
            if (arg >= 0) {
                rootsArr[0] = (-b + Math.sqrt(arg)) / (2 * a);
                rootsArr[1] = (-b - Math.sqrt(arg)) / (2 * a);
                return true;
            } else {
                System.out.println("root(): b^2 - 4ac is negative!");
                rootsArr[0] = 0.0;
                rootsArr[1] = 0.0;
                return false;
            }
        } else {
            System.out.println("root(): a is zero!");
            rootsArr[0] = 0.0;
            rootsArr[1] = 0.0;
            return false;
        }
    }
}
