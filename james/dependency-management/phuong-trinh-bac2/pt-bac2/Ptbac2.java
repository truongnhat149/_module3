
public class Ptbac2 {
    public static float a,b,c;
    public static float x1, x2;

    public static void giaiPTBac2() {
        // phương trình bậc 2 ax^2 + bx + c = 0

        if (a == 0) {
            if (b == 0) {
                System.out.println("Phương trình vô nghiệm");
            } else  {
                System.out.println("Phương trình có 1 nghiệm x = " +
                        (-b / c));
            }
        }
        float delta = (b * b) - (4 * a * c);

        if (delta > 0) {
            x1 = (float) (-b + Math.sqrt(delta) / (2 * a));
            x2 = (float) (-b - Math.sqrt(delta) / (2 * a));

            System.out.println("Phương trình có 2 nghiệm là :\n x1 = " + x1 + "\n và x2 = " + x2);
        } else if (delta == 0 ) {
            x1 = (-b / (2 * a) );
            System.out.println("Phương trình có 1 nghiệm là : \n x1 = x2 = " + x1);
        } else {
            System.out.println("Phương trình vô nghiệm");
        }
    }
}
