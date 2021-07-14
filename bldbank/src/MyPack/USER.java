package MyPack;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import MyPack.Usermain;  
public class USER {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank","root","root");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  /*
public static int save(Usermain u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into register(name,password,email,bld,address) values(?,?,?,?,?)");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getbld());  
        ps.setString(5,u.getaddress());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status; 
}   */
public static int update(Usermain u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update request set name=?,Age=?,email=?,bld=?,adhaar_no=? where id=?");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getAge());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getbld());  
        ps.setString(5,u.getAdhaar());  
        ps.setInt(6,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Usermain u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Usermain> getAllRecords(){  
    List<Usermain> list=new ArrayList<Usermain>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from request");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Usermain u=new Usermain();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name")); 
            u.setEmail(rs.getString("email"));
            u.setmobile(rs.getString("Mobile"));  
            u.setAge(rs.getString("Age"));  
            u.setbld(rs.getString("bld"));  
            u.setAdhaar(rs.getString("Adhaar_no"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static Usermain getRecordById(int id){  
    Usermain u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from register where =?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Usermain();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name")); 
            u.setEmail(rs.getString("email"));
            u.setmobile(rs.getString("Mobile"));  
            u.setAge(rs.getString("Age"));  
            u.setbld(rs.getString("bld"));  
            u.setAdhaar(rs.getString("Adhaar_no")); 
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}