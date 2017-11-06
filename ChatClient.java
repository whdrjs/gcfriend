package spareTime;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.*;

import javax.swing.AbstractAction;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.JLabel;

/*
 * @author ���� */
public class ChatClient{
   String text="";
   String name="";
    JFrame frame = new JFrame("ä��â");
    JTextField textField = new JTextField();
    JTextField textName = new JTextField();
    JTextArea messageArea;
    JPanel panel;
    
    String other="";
    
    public ChatClient() throws IOException,InterruptedException 
    {
       messageArea = new JTextArea(){ //message�� �����ִ� â�� ���� GUI
          {setOpaque(false);}
        
       };
       
       panel = new JPanel(){
          {setOpaque(false);}
          
       };
       
       frame.getContentPane().setBackground(new Color(79,54,29));
       //����, �ӼӸ� , �����⸦ ���� ��ư�� ����.-�̹��� ���߿� �������� ��� ����.
       JButton b1 = new JButton(new ImageIcon(
                ((new ImageIcon("�̹����̸�")).getImage()).getScaledInstance(35, 35, java.awt.Image.SCALE_SMOOTH))); //���۹�ư
       JButton whisper = new JButton(new ImageIcon(
                ((new ImageIcon("�̹��� �̸�")).getImage()).getScaledInstance(80, 35, java.awt.Image.SCALE_SMOOTH))); //�ӼӸ���ư
       JButton b2 = new JButton(new ImageIcon(
                ((new ImageIcon("�̹��� �̸�")).getImage()).getScaledInstance(80, 55, java.awt.Image.SCALE_SMOOTH))); //�������ư
        whisper.setBackground(new Color(225,219,249));
        // Layout GUI
        
        textField.setEditable(false);//textField�� ���� ������� ���ϰ� false������ �ʱ�ȭ�Ѵ�.
        messageArea.setEditable(false);//messageArea�� ������ ������� ���ϰ� false������ �ʱ�ȭ�Ѵ�.
        
        
        frame.setLayout(null);
        frame.setBounds(10, 10, 500, 600);
        textName.setBounds(70,10,300,35);
        textName.setBackground(new Color(79,54,29));
        textName.setForeground(Color.white);
        textName.setBorder(BorderFactory.createLineBorder(new Color(0,0,0,0)));
        textField.setBounds(10, 510, 335, 35);
        panel.setBounds(15, 10, 35, 35);
        textField.setBackground(new Color(255,255,255));
        textField.setBorder(BorderFactory.createLineBorder(new Color(0,0,0,0)));
        frame.getContentPane().add(textField); // textField�� �����Ѵ�.
        frame.getContentPane().add(textName);
        frame.getContentPane().add(panel);
        textField.setFont(new Font("����ǹ��� �־�",Font.PLAIN,15)); //��Ʈ �����غ����� �־����..
        textName.setFont(new Font("����ǹ��� �־�",Font.PLAIN,25));
        b1.setBounds(350, 510, 35, 35);
        b1.setBorder(BorderFactory.createLineBorder(new Color(0,0,0,0)));
        b2.setBorder(BorderFactory.createLineBorder(new Color(0,0,0,0)));
        whisper.setBorder(BorderFactory.createLineBorder(new Color(0,0,0,0)));
        messageArea.setBorder(BorderFactory.createLineBorder(new Color(0,0,0,0)));
        b1.setOpaque(true);
        frame.getContentPane().add(b1); 
        b2.setBounds(390, 10, 80, 25);
      
        b2.setBackground(new Color(255,255,255));
        frame.getContentPane().add(b2); 
        whisper.setBounds(390, 510, 80, 35);
        frame.getContentPane().add(whisper);
        messageArea.setBounds(5,30,470,500);
        messageArea.setFont(new Font("����ǹ��� �־�",Font.PLAIN,15));
        JScrollPane scroll = new JScrollPane(messageArea);
        scroll.setBounds(15, 50, 450, 450);
        frame.getContentPane().add(scroll);

         //textField�� ������� �� ���ϴ� �׼� �κ��� �� ���� .-textField�� �Է��� �޾Ƽ� ������ ������.
              
       
        b2.addActionListener(new ActionListener(){ //�������ư�� ������ �� ���ϴ� �׼�
           
           public void actionPerformed(ActionEvent e)
           {
              System.exit(0);
           }
   
        });
        
        b1.addActionListener(new ActionListener(){ //���۹�ư�� ������ �� ���ϴ� �׼�
           
           public void actionPerformed(ActionEvent e)
           {
              Client.out.println(textField.getText()); //������ ����, �������� �ȸ��� ������
                textField.setText("");
           }
        });
       
        whisper.addActionListener(new ActionListener(){ //�ӼӸ� ��ư�� ������ �� ���ϴ� �׼�
           
            public void actionPerformed(ActionEvent e) 
             {
               other = sendWhisper(); //sendWhisper�Լ��� ȣ���ؼ� �ӼӸ��� ���� ����� �̸��� �Է¹޾Ƽ� other�� �����Ѵ�.
                 Client.out.println(other+"@"+textField.getText()); // "�ӼӸ� ���� ����� �̸�@message" format���� ������ ������. 
                 textField.setText("");
               System.out.println("");
             }
        });
    }
    
       
    String getName() {
      return JOptionPane.showInputDialog(frame, "Choose a screen name:", "Screen name selection",
            JOptionPane.PLAIN_MESSAGE); // Ŭ���̾�Ʈ�� �̸��� �Է¹���
   }

   String sendWhisper() {
      return JOptionPane.showInputDialog(frame, "Who will you spend the WHISPER message?", "",
            JOptionPane.PLAIN_MESSAGE); // �ӼӸ��� ���� ����� �̸��� �Է¹���
   }
   String getText()
   {
      return text;
   }

    
    
} 
