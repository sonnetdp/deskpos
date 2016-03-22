package DbClass;

import java.sql.*;
class MysqlCon{
Connection myConn;
    public  MysqlCon(){
        
        String user = "root";
        String password = "";
        String dburl = "jdbc:mysql://localhost:3306/pos";

        try{  
        Class.forName("com.mysql.jdbc.Driver");
        myConn=DriverManager.getConnection(dburl, user, password);  
        System.out.println("DB connection successful to: " + dburl);
        }catch(ClassNotFoundException | SQLException e){ System.out.println(e);}  
    //return con;
    }
    
    
    
    
    
    
    
//    public ArrayList getStudents(){
//        //ArrayList<Employee> employee = new ArrayList<Employee>();
//        
//        //return list;
//        
//    }
}