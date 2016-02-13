import java.util.Scanner;

public class BiggerIsGreater
{
    public static final String NO_ANSWER = "no answer";

    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        int n = scanner.nextInt();
        scanner.nextLine();

        while (n > 0) {
            String permutation = nextPermutation(scanner.nextLine());
            System.out.println(permutation);
            n--;
        }
    }

    public static String nextPermutation(String str)
    {
        char[] c = str.toCharArray();

        int i = c.length - 2;
        while (i >= 0 && c[i] >= c[i + 1]) {
            i--;
        }

        if (i < 0) {
            return NO_ANSWER;
        }

        int swap = i + 1;
        for (int n = swap; n < c.length; n++) {
            if (c[n] <= c[swap] && c[n] > c[i]) {
                swap = n;
            }
        }
        c[i] ^= c[swap];
        c[swap] ^= c[i];
        c[i] ^= c[swap];
        int left = i + 1;
        int right = c.length - 1;
        while (left < right) {
            c[left] ^= c[right];
            c[right] ^= c[left];
            c[left] ^= c[right];
            left++;
            right--;
        }

        return new String(c);
    }
}
