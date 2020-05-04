/* WalkingBird.java provides extends the bird class for walking birds
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class WalkingBird extends Bird {

    /* default constructor
    */
    public WalkingBird() {
        super();
    }

    /* Explicit constructor
    * Recieve: String name - the name of the walking bird
    * Post: WalkingBird will be initialized with that name
    */
    public WalkingBird(String name) {
        super(name);
    }

    /* the movement of a walking bird
    * Return: A string representing the movement of a walking bird (walking)
    */
    public String movement() {
        return "walked by";
    }
}