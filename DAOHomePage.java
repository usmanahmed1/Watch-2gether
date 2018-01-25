package ServleteAndDAO;


import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DAOHomePage {
    
    public boolean inserRecord(VideoData vd)
    {
        boolean flag = false;
        String sql="insert into videoData () (name , date , embededURL , posters) values (?,?,?,?)";
        Connection con=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            pst=con.prepareStatement(sql);
            pst.setString(1, vd.getName());
            pst.setDate(2, vd.getDate());
            pst.setString(3, vd.getEmbedURl());
            pst.setString(4, vd.getPosters());
            int rows=pst.executeUpdate();
            flag = (rows!=0);
        } catch (SQLException ex) {
            System.out.println();
        }
        return flag;
    }
    
    
    public ArrayList openVideoData( String keys)
    {
        String sql="select * from videodata where NAME like '%" + keys + "%' limit 5";
        ArrayList<VideoData> list=new ArrayList<>();
        Connection con=openConnection();
        try {
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                VideoData vd;
                vd = new VideoData( rs.getString(2) , rs.getDate(3) , rs.getString(4) , rs.getString(5), rs.getInt(1));
                list.add(vd);
            }
        } catch (SQLException ex) {
            System.out.println();
        }
            return list;
    }
    public ArrayList getVideoData(String keys)
    {
        String sql="select * from videodata where id = " + keys;
        ArrayList<VideoData> list=new ArrayList<>();
        Connection con=openConnection();
        try {
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                VideoData vd;
                vd = new VideoData(rs.getString(2) , rs.getDate(3) , rs.getString(4) , rs.getString(5), rs.getInt(1));
                list.add(vd);
            }
        } catch (SQLException ex) {
            System.out.println();
        }
            return list;
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
