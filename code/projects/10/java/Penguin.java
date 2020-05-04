/* Penguin.java provides an Penguin subclass of WalkingBird.
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class Penguin extends WalkingBird {

    /* default constructor
    */
    public Penguin() {
        super();
    }

    /* explicit constructor
    * Receive: name, a String 
    * PostCond: myName == name.
    */
    public Penguin(String name) {
        super(name);
    }

    /* An Penguin's Call
    * Return: an Penguin-call ("Whoo-hoo!").
    */

    public String call() {
        return "Huh-huh-huh-huuuuh!";
    }

} 
