
package ServleteAndDAO;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DAOSignUp {
    
    public boolean insertData(SignUp s) throws SQLException
    {
        if(verifyRecord(s.getUname())==true)
            return false;
        boolean flag=false;
        Connection con=openConnection();
        if(con != null)
        {
            
            String sql="insert into SIGNUP ( firstname, lastname , username , email , password) values (?,?,?,?,?)";
            PreparedStatement pst=null;
            try {
                pst=con.prepareStatement(sql);
                pst.setString(1, s.getFname());
                pst.setString(2, s.getLname());
                pst.setString(3, s.getUname());
                pst.setString(4, s.getEmail());
                pst.setString(5, s.getPassword());
                int rows = pst.executeUpdate();
                if(rows>0)
                    flag=true;
            } catch (SQLException ex) {
                System.out.println();
            }
            finally
            {
                try {
                    closeConnection(con);
                } catch (SQLException ex) {
                    System.out.println();
                }
            }
        }
        return flag;
    }
    
    public ArrayList<SignUp> getAllUser() throws SQLException
    {
        String sql="select * from signup";
        ArrayList<SignUp> list=new ArrayList<>();
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        con=openConnection();
        st=con.createStatement();
        rs=st.executeQuery(sql);
        while(rs.next())
        {
            SignUp s=new SignUp(rs.getString(2),rs.getString(3) , rs.getString(4) , rs.getString(5) , rs.getString(1));
            list.add(s);
        }
        return list;
    }
    public SignUp GetMyAccount(String username) throws SQLException
    {
        SignUp sign=new SignUp();
        String sql = "select * from signup where username = '" + username + "'";
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        con=openConnection();
        st=con.createStatement();
        rs=st.executeQuery(sql);
        if(rs.next())
        {
            sign.setFname(rs.getString(2));
            sign.setLname(rs.getString(3));
            sign.setUname( rs.getString(4));
            sign.setEmail(rs.getString(5));
        }
        return sign;
    }
    private boolean verifyRecord(String username) throws SQLException
    {
        String sql = "select * from signup where username = '" + username + "'";
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        con=openConnection();
        st=con.createStatement();
        rs=st.executeQuery(sql);
        if(rs.next())
        {
            return true;
        }return false;
    }
    public boolean checkEmailAsynchronously(String email) throws SQLException
    {
        boolean flag=false;
        String sql = "select * from signup where email = '" + email + "'";
        Connection con=openConnection();
        Statement st=null;
        ResultSet rs=null;
        st=con.createStatement();
        rs=st.executeQuery(sql);
        if(rs.next())
        {
            if(rs.getString(4)==email)
                flag = true;
            else flag = false;
        }
        return flag;
    }
    
    public boolean checkAsynchronously(String username) throws SQLException
    {
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="Select * from signup where username = '" + username + "'";
        con=openConnection();
        st=con.createStatement();
        rs=st.executeQuery(sql);
        if (rs.next())
        {
            if(rs.getString(3)==username)
                return true;
            return false;
        }           
        return true;
    }
    private static Connection openConnection()
    {
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject","root","Usman123");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println();
        }
        return con;
    }
    private static void closeConnection(Connection con) throws SQLException
    {
        if(con!=null)
            con.close();
    }
}
