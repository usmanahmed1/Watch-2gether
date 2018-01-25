
package ServleteAndDAO;

import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class DAOLogin {
    
    public boolean verfyRecords(Login login)
    {
        boolean flag=false;
        Connection conn=openConnection();
        Statement st=null;
        ResultSet rs=null;
        String sql="Select * from signup where username = '" + login.getUsername()
                + "' and password = '" + login.getPassword() + "'";
        ArrayList<Login> list=new ArrayList<>();
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
           
            while(rs.next())
            {
                Login log=new Login(rs.getString(1),rs.getString(2));
                System.out.println(log.getUsername()+" " + log.getPassword());
                list.add(log);
            }
        } catch (SQLException ex) {
            System.out.println();
        }
        finally{
            try {
                closeConnection(conn);
            } catch (SQLException ex) {
                System.out.println();
            }
        }
        return(!list.isEmpty());
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
