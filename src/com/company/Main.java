package com.company;
import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        int m = scan.nextInt();
        int k = scan.nextInt();
        int num = 0;
        if(k < 2)
            System.out.println(0);
        else {
            if (m % 2 == 1) {
                m = m - 1;
                num += 1;
            }
            int m1 = m / 2;
            int k1 = k - 2;
            double n1 = (n / k1);
            if (n1 > m1)
                System.out.println(0);
            else
                System.out.println(m / 2 + num);
        }
    }
}




