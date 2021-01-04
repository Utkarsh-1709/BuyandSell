//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import javax.servlet.ServletContextEvent;
//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
///**
// *
// * @author HP
// */
//public class JDBCListener {
//    
//    
//    public static void main(String args[])
//    {Connection cn;
//
//      int a=0;
//        try
//        { Class.forName("com.mysql.jdbc.Driver");
//        cn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/buesell","root","");
//            PreparedStatement ps=cn.prepareStatement("insert into registration values('monu','singh','fghj@g.com','lko',1234)");
//          
//            a=ps.executeUpdate(); 
//            System.out.println(a+"aaaaaaa");
//        }
//        catch(Exception e)
//        {
//           
//        }   
//    }
//}