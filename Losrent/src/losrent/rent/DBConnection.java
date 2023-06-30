/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package losrent.rent;


import java.sql.*;

public class DBConnection {
    
    static final String DB_URL = "jdbc:mysql://localhost/losrent";
    static final String USER = "root";
    static final String PASS = "";
    public static Connection connectDB()
    {
        Connection conn = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            return conn;
        }
        catch(ClassNotFoundException | SQLException ex)
        {
            System.out.println("There were errors while connecting to the database");
            return null;
        }
    }
}
