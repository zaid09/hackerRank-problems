import java.io.IOException;

public class Pangrams
{
    public static void main(String[] args) throws IOException
    {
        int xor = 0;
        int alphas = 0;
        for (int i = 0; i < 26; i++) {
            xor ^= i;
        }

        int c;
        while ((c = System.in.read()) != -1) {
            c = Character.toLowerCase(c);
            if (c < 'a' || c > 'z') continue;
            c -= 'a';
            if (((alphas >> c) & 1) ==  1) continue;
            xor ^= c;
            alphas |= 1 << c;
        }

        if (xor == 0) {
            System.out.println("pangram");
        } else {
            System.out.println("not pangram");
        }
    }
}
