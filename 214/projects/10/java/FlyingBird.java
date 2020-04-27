/* FlyingBird.java provides extends the bird class for flying birds
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class FlyingBird extends Bird {

    /* default constructor
    */
    public FlyingBird() {
        super();
    }
    
    /* explicit constructor
    * Recieve: String name - the name of the FlyingBrid
    * Post: FlyingBird will be initialized with that name
    */
    public FlyingBird(String name) {
        super(name);
    }

    /* movement of a flying bird (flying)
    * Return: a string indicating movement ("flew by")
    */
    public String movement() {
        return "flew by";
    }
}