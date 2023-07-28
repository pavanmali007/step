/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.repo;

/**
 *
 * @author pavan
 */
// Search for: (theory) java Database Connectivity theory by telusko
// 1. import package
// 2. load and register the driver
// 3. create connection 
// 4. create a statment
// 5. execute the query
// 6. process the results
// 7. close
//import java.sql.*;
//
//public class DemoClass {
//	public static void main(String args[]) throws Exception{
//		String url = "jdbc:mysql://localhost:3306/studentmanagment";
//		String uname = "root";
//		String pass = "pavan123";
//		String query = "select * from users";
//		
//		Class.forName("com.mysql.cj.jdbc.Driver");
//            try (Connection con = DriverManager.getConnection(url, uname, pass);
//                Statement st = con.createStatement()) {
//                ResultSet rs = st.executeQuery(query);
//                
//                rs.next();
//                String userdata = rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3);
//                
//                System.out.println(userdata);
//            }
//	}
//}
// 1. import java.sql.*;
import java.sql.*;

public class DemoClass {

    public static void main(String args[]) throws ClassNotFoundException, SQLException {

        String url = "jdbc:mysql://localhost:3306/studentmanagment";
        String uname = "root";
        String password = "pavan123";
        String qry = "select * from users";

        // 2. load and register the driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // 4. create a statment
        try ( // 3. create connection
            Connection con = DriverManager.getConnection(url, uname, password); // 4. create a statment
            Statement st = con.createStatement()) {
            // 5. execute the query
            ResultSet rs = st.executeQuery(qry);
            // 6. process the results
            while (rs.next()) {
                String userdata = "Username: " + rs.getString(1) + ", Password: " + rs.getString("password") + ", Email: " + rs.getString(2) + ", Again Password: " + rs.getString(3);
                System.out.println(userdata);
            }
        }
    }
}
