
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author farhana
 */
public class JConnection {
    
    String url ="jdbc:mysql://localhost:3306/myTable";
    String user ="root";
    String pswd ="root";
    Connection conn;
    
    
    
    JConnection()
    {
  
    
     
        try {
            Class.forName("com.mysql.jdbc.Driver");
             
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(JConnection.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("class not found") ;
        }
         
        try {
             conn =DriverManager.getConnection(url, user,pswd);
        } catch (SQLException ex) {
            Logger.getLogger(JConnection.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(" Sql exception");
        }
            
           
         System.out.println("its connected"); 
            
            
 
        
    }
    
    
    
    
    }
    
   
    

