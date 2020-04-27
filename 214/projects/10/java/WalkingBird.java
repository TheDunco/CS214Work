/* WalkingBird.java provides extends the bird class for walking birds
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class WalkingBird extends Bird {
    public WalkingBird() {
        super();
    }

    public WalkingBird(String name) {
        super(name);
    }

    public String movement() {
        return "walked by";
    }
}