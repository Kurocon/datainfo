package nl.utwente.di;

/**
 * Created by kevin on 4/22/14.
 */
public class Quoter {

    public static double getBookPrice(String name){


        switch(name) {
            case "1":
                return 10.0;
            case "2":
                return 45.0;
            case "3":
                return 20.0;
            case "4":
                return 35.0;
            case "5":
                return 50.0;
            default:
                return 0;
        }
    }
}
