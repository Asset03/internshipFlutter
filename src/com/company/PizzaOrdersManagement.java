package com.company;

import java.util.*;
public class PizzaOrdersManagement {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        if(n == 1){//1 task
            int v = scan.nextInt();
            String[][] s = new String[v][10];
            int sum;
            int count = 0;
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < 10; j++) {
                    s[i][j] = scan.next();
                }
            }
            for (int i = 0; i < v; i++) {
                sum = Integer.parseInt(s[i][3]);
                count+=sum;
            }
            System.out.println("Total Price:");
            System.out.println(count);
        }
        if(n == 2) {//2 task
            int k = scan.nextInt();
            int v = scan.nextInt();
            String[][] s = new String[v][10];
            int sum = 0;
            String r = "No result";
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < 10; j++) {
                    s[i][j] = scan.next();
                }
            }
            System.out.println("Search by ID: " + k);
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < 10; j++) {
                    sum = Integer.parseInt(s[i][0]);
                    if (sum == k) {
                        System.out.print(s[i][j] + " ");
                    }
                }
                if (sum == k) {
                    r = "";
                    System.out.println();
                }
            }
            System.out.println(r);
        }
        if (n == 3) {//3 task
            String d = scan.next();
            int v = scan.nextInt();
            String[][] s = new String[v][10];
            String m = "";
            String g = "No result";
            System.out.println("Search by date: "+d);
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < 10; j++) {
                    s[i][j] = scan.next();
                }
            }
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < 10; j++) {
                    m = s[i][1];
                    if(m.equals(d))
                        System.out.print(s[i][j]+" ");
                }
                if(m.equals(d)) {
                    g = "";
                    System.out.println();
                }
            }
            System.out.println(g);
        }
        if(n == 4) {//4 task
            int v = scan.nextInt();
            String[] s = new String[v];
            for (int i = 0; i < v; i++) {
                String str = "";
                for (int j = 0; j < 10; j++) {
                    str = str + ( scan.next() + " ");
                }
                s[i] = str;
            }String ax;
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < v-i-1; j++) {
                    int a = Integer.parseInt(s[j].split(" ")[0]);
                    int b = Integer.parseInt(s[j+1].split(" ")[0]);
                    if(a > b){
                        ax = s[j];
                        s[j] = s[j+1];
                        s[j+1] = ax;
                    }
                }
            }
            System.out.println("Sort by ID: ");
            for (int i = 0; i < v; i++) {
                System.out.println(s[i]);
            }
        }
        if(n == 6){
            int v = scan.nextInt();
            int count1 = 0;//20
            int count2 = 0;//30
            int count3 = 0;//40
            String[][] s = new String[v][10];
            int som;
            for (int i = 0; i < v; i++) {
                for (int j = 0; j < 10; j++) {
                    s[i][j] = scan.next();
                }
            }
            System.out.println("Most popular size(s):");
            for (int i = 0; i < v; i++) {
                som = Integer.parseInt(s[i][5]);
                if(som == 20)
                    count1++;
                else if(som == 30)
                    count2++;
                else
                    count3++;
            }
            if(count1 >= count2 && count1 >= count3)
                System.out.println("20");
            if(count2 >= count1 && count2 >= count3)
                System.out.println("30");
            if(count3 >= count2 && count3 >= count1)
                System.out.println("40");

        }
        if(n == 5){
            int w = scan.nextInt();
            String s[] = new String[w];
            long l[] = new long[w];
            int index[] = new int[w];
            for (int i = 0; i < w; i++) {
                index[i] = i;
                String input = "";
                for (int j = 0; j < 10; j++) {
                    String x = scan.next();
                    if (j == 1) {
                        String arr[] = x.split("\\.");
                        l[i] += Long.parseLong(arr[0]) * 24 * 60 + Long.parseLong(arr[1]) * 24 * 30 * 60 + Long.parseLong(arr[2]) * 12 * 24 * 30 * 60;
                    }
                    if (j == 2) {
                        String arr[] = x.split(":");
                        l[i] += Long.parseLong(arr[0]) * 60 + Long.parseLong(arr[1]);
                    }
                    input += x + " ";
                }
                s[i] = input;
            }
            for (int i = 0; i < l.length - 1; i++) {
                for (int j = 0; j < l.length - 1 - i; j++) {
                    if (l[j] > l[j + 1]){
                        long temp = l[j];
                        l[j] = l[j + 1];
                        l[j + 1] = temp;

                        int t = index[j];
                        index[j] = index[j + 1];
                        index[j + 1] = t;
                    }
                    
                }
            }
            System.out.println("Sort by date and time:");
            for (int i = 0; i < index.length; i++) {
                System.out.println(s[index[i]]);
            }
        }
        if(n == 7){
            int v = scan.nextInt();
            ArrayList<String> s = new ArrayList<>();
            for (int i = 0; i < v; i++) {
                String d[] = new String[10];
                String answer = "";
                for (int j = 0; j < 10; j++) {
                    d[j] = scan.next();
                    if (j > 5){
                        answer += d[j] + " ";
                    }
                }
                s.add(answer);
            }
            ArrayList<String> list2 = new ArrayList<>();
            int max = 0;
            for (int i = 0; i < s.size(); i++) {
                int count = 1;
                for (int j = i + 1; j < s.size();j++) {
                    if (s.get(i).equals(s.get(j))){
                        count ++;
                    }
                }
                if (count >= max){
                    max = count;
                }
            }
            for (int i = 0; i < s.size(); i++) {
                int count = 1;
                for (int j = i + 1; j <s.size() ; j++) {
                    if (s.get(i).equals(s.get(j))){
                        count ++;
                    }
                }
                if (count == max){
                    list2.add(s.get(i));
                }
            }
            System.out.println("Most popular pizza type(s):");
            for (int i = 0; i < list2.size(); i++) {
                String arr[] = list2.get(i).split(" ");
                String answer = "";
                if (arr[0] .equals("Yes")){
                    answer += "Cheese";
                }
                if(arr[1].equals("Yes")){
                    answer += "+Meat";
                }

                if(arr[2].equals("Yes")){
                    answer += "+Sausage";
                }

                if(arr[3].equals("Yes")){
                    answer += "+Vegetables";
                }
                System.out.println(answer);
            }
        }
    }
}