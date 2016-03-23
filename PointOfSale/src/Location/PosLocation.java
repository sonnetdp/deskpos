
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class PosLocation extends JConnection {
    
    String PosID ;
    String PosLoc;
    String PosStatus;
    ResultSet rs;
    
    JConnection j=new JConnection();
    
    public void showData(){
        
        try {
            Statement stmt = j.conn.createStatement();
             rs =stmt.executeQuery(("select pos_id,pos_loc,status from pos_location"));
            
            //while (rs.next())
                //System.out.println(rs.getString(1));
            
            
        } catch (SQLException ex) {
            //Logger.getLogger(PosLocation.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("SQL Exception in PosLocation class");
            
      
        }
    
    
    }
    
    
    
    
    
    
}
