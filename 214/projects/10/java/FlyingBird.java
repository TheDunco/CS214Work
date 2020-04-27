/* FlyingBird.java provides extends the bird class for flying birds
 *
 * By: Duncan Van Keulen
 * Date: 4/27/2020
 ******************************************************/

public class FlyingBird extends Bird {

    public FlyingBird() {
        super();
    }

    public FlyingBird(String name) {
        super(name);
    }

    public String movement() {
        return "flew by";
    }
}