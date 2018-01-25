package ServleteAndDAO;




import java.sql.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class VideoData {
   private String name,embedURl;
   private Date date;
   private String posters;
   private int id;

    public VideoData() {
        this.name="";
        this.date=null;
        this.embedURl="";
        this.id=0;
        this.posters="";
    }

    public VideoData(String name, Date date , String embedURl, String posters , int id) {
        this.name = name;
        this.date = date;
        this.embedURl = embedURl;
        this.posters=posters;
        this.id=id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmbedURl() {
        return embedURl;
    }

    public void setEmbedURl(String embedURl) {
        this.embedURl = embedURl;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPosters() {
        return posters;
    }

    public void setPosters(String posters) {
        this.posters = posters;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
}
