
package ServleteAndDAO;

/**
 *
 * @author Admin
 */
public class SignUp {
    private String fname,lname,uname,email,password;

    public SignUp() {
    }

    public SignUp(String fname, String lname, String uname, String email, String password) {
        this.fname = fname;
        this.lname = lname;
        this.uname = uname;
        this.email = email;
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
