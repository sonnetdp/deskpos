package Employee;

public class Employee {
    private int emp_id;	
    private String EMP_NAME;
    private String MOBILE;	
    private String GENDER;	
    private String NID;	
    private String JOIN_DATE;
    private String POS_ID;
    private String STATUS;
    
    public int getEmp_id() {
        return emp_id;
    }
    
    public String getPOS_ID() {
        return POS_ID;
    }

    public void setPOS_ID(String POS_ID) {
        this.POS_ID = POS_ID;
    }

    public String getEMP_NAME() {
        return EMP_NAME;
    }

    public void setEMP_NAME(String EMP_NAME) {
        this.EMP_NAME = EMP_NAME;
    }

    public String getMOBILE() {
        return MOBILE;
    }

    public void setMOBILE(String MOBILE) {
        this.MOBILE = MOBILE;
    }

    public String getGENDER() {
        return GENDER;
    }

    public void setGENDER(String GENDER) {
        this.GENDER = GENDER;
    }

    public String getNID() {
        return NID;
    }

    public void setNID(String NID) {
        this.NID = NID;
    }

    public String getJOIN_DATE() {
        return JOIN_DATE;
    }

    public void setJOIN_DATE(String JOIN_DATE) {
        this.JOIN_DATE = JOIN_DATE;
    }

    public String getSTATUS() {
        return STATUS;
    }

    public void setSTATUS(String STATUS) {
        this.STATUS = STATUS;
    }

    public Employee(int emp_id,String EMP_NAME, String MOBILE, String GENDER, String NID, String JOIN_DATE, String POS_ID, String STATUS) {
        this.emp_id = emp_id;
        this.EMP_NAME = EMP_NAME;
        this.MOBILE = MOBILE;
        this.GENDER = GENDER;
        this.NID = NID;
        this.JOIN_DATE = JOIN_DATE;
        this.POS_ID = POS_ID;
        this.STATUS = STATUS;
    }
}
