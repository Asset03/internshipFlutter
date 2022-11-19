package com.company;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;

import javax.swing.JFrame;
import javax.swing.JPanel;

public class FlagPanel extends JPanel {

    static int FLAG_WIDTH = 1400;
    static int FLAG_HEIGHT = 900;
    JButton flag1Button = new JButton("Japan");
    JButton flag2Button = new JButton("Belgia");
    //JButton flag3Button = new JButton("North Korea");
    JPanel buttons = new JPanel();
    String selectedFlag = "Flag1";

    public void DrawJapanFlag(Graphics g) {

        int rectangle_left_X = 0;
        int rectangle_top_Y = 0;
        int rectangle_width = FLAG_WIDTH;
        int rectangle_height = FLAG_HEIGHT;

        int oval_left_X = FLAG_WIDTH / 2 - FLAG_WIDTH / 6;
        int oval_top_Y = FLAG_HEIGHT / 2 - FLAG_HEIGHT / 4;
        int oval_width = FLAG_WIDTH / 3;
        int oval_height = FLAG_WIDTH / 3;

        g.setColor(Color.white);
        g.fillRect(rectangle_left_X, rectangle_top_Y, rectangle_width, rectangle_height);
        g.setColor(Color.red);
        g.fillOval(oval_left_X, oval_top_Y, oval_width, oval_height);
    }

    public void DrawBelgianFlage(Graphics g) {

        int rect1_left_X = 0;
        int rect1_top_Y = 0;
        int rect1_width = FLAG_WIDTH / 3;
        int rect1_height = FLAG_HEIGHT;

        int rect2_left_X = FLAG_WIDTH / 3;
        int rect2_top_Y = 0;
        int rect2_width = FLAG_WIDTH / 3;
        int rect2_height = FLAG_HEIGHT;

        int rect3_left_X = 2 * (FLAG_WIDTH / 3);
        int rect3_top_Y = 0;
        int rect3_width = FLAG_WIDTH / 3;
        int rect3_height = FLAG_HEIGHT;

        g.setColor(Color.black);
        g.fillRect(rect1_left_X, rect1_top_Y, rect1_width, rect1_height);

        g.setColor(Color.yellow);
        g.fillRect(rect2_left_X, rect2_top_Y, rect2_width, rect2_height);

        g.setColor(Color.red);
        g.fillRect(rect3_left_X, rect3_top_Y, rect3_width, rect3_height);
    }



    public void paint(Graphics g) {
        g.setColor(Color.gray);
        g.fillRect(0, 0, FLAG_WIDTH, FLAG_HEIGHT + 100);
        if (this.selectedFlag.equals("Flag1")) {
            DrawJapanFlag(g);
        }
        if (this.selectedFlag.equals("Flag2")) {
            DrawBelgianFlage(g);
        }
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame();
        final FlagPanel graphic = new FlagPanel();
        frame.getContentPane().add(graphic);

        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(FLAG_WIDTH, FLAG_HEIGHT + 100);
        graphic.flag1Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                graphic.selectedFlag = "Flag1";
                graphic.repaint();
            }
        });
        graphic.flag2Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                graphic.selectedFlag = "Flag2";
                graphic.repaint();
            }
        });

        graphic.buttons.add(graphic.flag1Button);
        graphic.buttons.add(graphic.flag2Button);

        frame.add(graphic.buttons, BorderLayout.SOUTH);
        graphic.revalidate();
        graphic.repaint();
        frame.setVisible(true);

    }
}

