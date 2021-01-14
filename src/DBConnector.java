import java.sql.*;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sagar Khatri
 */
public class DBConnector {
    private Connection dbconnection;
    
    public DBConnector(){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        dbconnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","123");
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "error is "+e);
        }
    }
    
    public Connection getDBConnection(){
        return dbconnection;
    }
    
}
