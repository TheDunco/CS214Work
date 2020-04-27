/* Ostrich.java provides an Ostrich subclass of WalkingBird.
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class Ostrich extends WalkingBird {

    /* explicit constructor
    * Receive: name, a String 
    * PostCond: myName == name.
    */

    public Ostrich() {
        super();
    }

    public Ostrich(String name) {
        super(name);
    }

    /* An Ostrich's Call
    * Return: an Ostrich-call ("Whoo-hoo!").
    */

    public String call() {
        return "Snork!";
    }

} 
