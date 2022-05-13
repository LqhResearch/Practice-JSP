package com;

public class Basic {

    public static String Calculator(int a, int b, String pt) {
        switch (pt) {
            case "+":
                return Integer.toString(a + b);
            case "-":
                return Integer.toString(a - b);
            case "*":
                return Integer.toString(a * b);
            case "/":
                return Double.toString(1.0 * a / b);
            default:
                return "";
        }
    }

    public static String Equation1(int a, int b) {
        String str = "Giải phương trình bậc 1: ";
        if (a == 0) {
            if (b == 0) {
                return str + "Phương trình vô số nghiệm";
            } else {
                return str + "Phương trình vô nghiệm";
            }
        } else {
            return str + "x = " + (-1.0 * b / a);
        }
    }

    public static String Equation2(int a, int b, int c) {
        String str = "Giải phương trình bậc 2: ";
        if (a == 0) {
            if (b == 0) {
                if (c == 0) {
                    return str + "Phương trình vô số nghiệm";
                } else {
                    return str + "Phương trình vô nghiệm";
                }
            } else {
                return str + "x = " + (-1.0 * c / b);
            }
        } else {
            int d = b * b - 4 * a * c;
            if (d > 0) {
                return str + "x1 = " + ((-b + Math.sqrt(d)) / (2 * a)) + ", x2 = " + ((-b - Math.sqrt(d)) / (2 * a));
            } else if (d == 0) {
                return str + "x1 = " + (-1.0 * b / (2 * a));
            } else {
                return str + "Phương trình vô nghiệm";
            }
        }
    }

    public static int Factorial(int n) {
        int f = 1;
        for (int i = 2; i <= n; i++) {
            f *= i;
        }
        return f;
    }

    public static boolean IsPrime(int n) {
        if (n < 2) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static int Sum1n(int n, int bt) {
        int sum = 0, f = 1;
        for (int i = 1; i <= n; i++) {
            f *= i;
            if (i % 2 == bt) {
                sum += f;
            }
        }
        return sum;
    }

    public static String DecToBin(int n) {
        String str = "";
        while (n != 0) {
            str += (n % 2);
            n /= 2;
        }
        return new StringBuffer(str).reverse().toString();
    }

    public static String PrimeAToB(int a, int b) {
        String str = "";
        for (int i = a; i <= b; i++) {
            if (IsPrime(i)) {
                str += i + "  ";
            }
        }
        return str;
    }
}
