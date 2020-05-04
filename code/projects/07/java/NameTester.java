import java.util.Scanner;

/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Duncan Van Keulen
 * For Proj07
 * Date: 4-6-2020
 ************************************************************/


// Tests the name class
public class NameTester {
    public static void main(String[] args) {
        Name aName = new Name("John", "Paul", "Jones");
        
        assert aName.getFirst().equals("John") ;
        assert aName.getMiddle().equals("Paul") ;
        assert aName.getLast().equals("Jones") ;
        
        System.out.println(aName);
        assert aName.toString().equals("John Paul Jones");

        // Mutator tests
        aName.setFirst("Phillip");
        assert aName.getFirst().equals("Phillip");
        
        aName.setMiddle("Joseph");
        assert aName.getMiddle().equals("Joseph");

        aName.setLast("Wheelwright");
        assert aName.getLast().equals("Wheelwright");

        // read needs a scanner object
        Scanner keyboard = new Scanner(System.in);
        aName.read(keyboard);
        System.out.println(aName.toString());
        assert aName.toString().equals("Jane Renee Doe");


        System.out.println("All tests passed!");
    }
}

// Simple class used for implementing a name of First, Middle, Last
class Name {
    private String myFirst, myMiddle, myLast;

    public Name(String first, String middle, String last) {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
    }

    public String getFirst(){
        return myFirst;
    }

    public String getMiddle(){
        return myMiddle;
    }

    public String getLast(){
        return myLast;
    }

    public String toString(){
        return myFirst + ' ' + myMiddle + ' ' + myLast;
    }

    public void setFirst(String first) {
        myFirst = first;
    }

    public void setMiddle(String middle) {
        myMiddle = middle;
    }

    public void setLast(String last) {
        myLast = last;
    }

    public String lfmi() {
        return myLast + ", " + myFirst + " " + myMiddle.charAt(0) + ".";
    }

    public void read(Scanner keyboard) {
        myFirst = keyboard.nextLine();
        myMiddle = keyboard.nextLine();
        myLast = keyboard.nextLine();
    }

};
