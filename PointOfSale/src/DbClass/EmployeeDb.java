package DbClass;
import Employee.Employee;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class EmployeeDb extends MysqlCon{
    //for all employee
    public ArrayList<Employee> getAllEmployees() throws Exception {
        ArrayList<Employee> list = new ArrayList<>();

        Statement myStmt = myConn.createStatement();
        String sql = "SELECT * FROM employee";
        ResultSet myrs = myStmt.executeQuery(sql);
        

        while (myrs.next()) {
               
               list.add(new Employee(
                        myrs.getInt("emp_id"),
                        myrs.getString("EMP_NAME"),
                        myrs.getString("MOBILE"),
                        myrs.getString("GENDER"),
                        myrs.getString("NID"),
                        myrs.getString("JOIN_DATE"),
                        myrs.getString("POS_ID"),
                        myrs.getString("STATUS")   
                ));
        }
        return list;
    }
    //for all employee with where condition
    public ArrayList<Employee> getAllEmployees(String where_condition) throws Exception {
        ArrayList<Employee> list = new ArrayList<>();

        Statement myStmt = myConn.createStatement();
        String sql = "SELECT * FROM employee"+where_condition;
        ResultSet myrs = myStmt.executeQuery(sql);
        

        while (myrs.next()) {
               
               list.add(new Employee(
                        myrs.getInt("emp_id"),
                        myrs.getString("EMP_NAME"),
                        myrs.getString("MOBILE"),
                        myrs.getString("GENDER"),
                        myrs.getString("NID"),
                        myrs.getString("JOIN_DATE"),
                        myrs.getString("CUR_POS_LOC"),
                        myrs.getString("STATUS")   
                ));
        }
        return list;
    }
}