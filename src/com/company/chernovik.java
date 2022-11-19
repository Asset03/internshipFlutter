package com.company;

import java.math.BigInteger;
import java.util.*;
public class chernovik {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int q = scan.nextInt();
        while (q-->0) {
            int a = scan.nextInt();
            int b = scan.nextInt();
            int n = scan.nextInt();
            Point p = new Point(a, b, n);
            p.printList();
        }
    }
}
class Point {
    private int a;
    private int b;
    private int n;
    public Point(int a, int b, int n){
        this.a = a;
        this.b = b;
        this.n = n;
    }
    public List<Integer> get(){
        ArrayList<Integer> list = new ArrayList<>();
        int sum = a;
        int j = 1;
        for (int i = 1; i <= n; i ++) {
            sum += j * b;
            list.add(sum);
            j *= 2;
        }
        return list;
    }
    public void printList() {
        for (int i = 0; i < get().size(); i++) {
            System.out.print(get().get(i) + " ");
        }
        System.out.println();
    }
}

