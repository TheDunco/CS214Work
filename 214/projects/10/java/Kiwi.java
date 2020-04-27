/* Kiwi.java provides an Kiwi subclass of WalkingBird.
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class Kiwi extends WalkingBird {

    /* explicit constructor
    * Receive: name, a String 
    * PostCond: myName == name.
    */

    public Kiwi() {
        super();
    }

    public Kiwi(String name) {
        super(name);
    }

    /* An Kiwi's Call
    * Return: an Kiwi-call ("Whoo-hoo!").
    */

    public String call() {
        return "Sqwee! Sqwee!";
    }

} 
