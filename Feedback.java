/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServleteAndDAO;

import java.sql.*;

/**
 *
 * @author Admin
 */
public class Feedback {
    private String name,email,msg;

    public Feedback() {
        name="";
        email="";
        msg="";
    }

    public Feedback(String name, String email, String msg) {
        this.name = name;
        this.email = email;
        this.msg = msg;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    public int saveMsg( Feedback fb )
    {
        Connection con=openConnection();
        Statement st=null;
        int rows=0;
        try {
            String query="insert into feedback (Name , Email , message) values ('" + fb.getName() + "' , '" + fb.getEmail() + "' , '" + fb.getMsg() + "')";
            st=con.createStatement();
            rows=st.executeUpdate(query);
        } catch (SQLException ex) {
            System.out.println();
        }
            return rows;
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
