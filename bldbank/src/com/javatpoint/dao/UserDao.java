package com.javatpoint.dao;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.javatpoint.bean.User;  
public class UserDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank","root","root");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  /*
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into register(name,password,email,sex,country) values(?,?,?,?,?)");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getPasswo());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getSex());  
        ps.setString(5,u.getCountry());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  */
public static int update(User u){  
    int mstatus=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update uregister set name=?,email=?,mobile=?,age=?,bld=? where uid=?");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getEmail());  
        ps.setString(3,u.getMobile());  
        ps.setString(4,u.getAge());  
        ps.setString(5,u.getbld()); 
        mstatus=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return mstatus;  
}  
public static int delete(User u){  
    int mstatus=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from uregister  where uid="+u+" ");  
       ps.setInt(1,u.getUId());  
        mstatus=ps.executeUpdate(); 
       
    }catch(Exception e){System.out.println(e);}  
  
    return mstatus;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select*from uregister");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
           u.setUId(rs.getInt("uid"));  
            u.setName(rs.getString("name")); 
            u.setEmail(rs.getString("email"));  
            u.setMobile(rs.getString("mobile"));
            u.setAge(rs.getString("age"));  
            u.setbld(rs.getString("bld"));  
            u.setPass(rs.getString("pass"));
            u.setAddress(rs.getString("location"));
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
} 
public static List<User> getAllRecordsofAdmin(){  
    List<User> alist=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select*from admin");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
           u.setUId(rs.getInt("admin_id"));  
            u.setName(rs.getString("name")); 
            u.setUsername(rs.getString("username"));  
            u.setPass(rs.getString("password"));
            alist.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return alist;  }
public static List<User> getAllRecordsbldbank(){  
        List<User> blist=new ArrayList<User>();  
        
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select*from bregister");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                User u=new User();  
               u.setUId(rs.getInt("bid"));  
                u.setName(rs.getString("name")); 
                u.setEmail(rs.getString("emaill"));  
                u.setMobile(rs.getString("mobile"));  
                u.setAddress(rs.getString("address")); 
                u.setPass(rs.getString("pass"));
                blist.add(u);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return blist;  
}
public static List<User> geta(){  
List<User> clist=new ArrayList<User>();  

try{  
    Connection con=getConnection();  
    PreparedStatement ps=con.prepareStatement("select*from hregister");  
    ResultSet rs=ps.executeQuery();  
    while(rs.next()){  
        User u=new User();  
       u.setUId(rs.getInt("hid"));  
        u.setName(rs.getString("name")); 
        u.setEmail(rs.getString("emaill"));  
        u.setMobile(rs.getString("mobile"));  
        u.setAddress(rs.getString("address")); 
        u.setPass(rs.getString("pass"));
        clist.add(u);  
    }  
}catch(Exception e){System.out.println(e);}  
return clist;  
}


        
public static User getRecordById(int uid){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from uregister where uid=?");  
        ps.setInt(1,uid);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setUId(rs.getInt("uid"));  
            u.setName(rs.getString("name")); 
            u.setEmail(rs.getString("email"));  
            u.setMobile(rs.getString("mobile"));
            u.setAge(rs.getString("age"));  
            u.setbld(rs.getString("bld"));  
            u.setPass(rs.getString("pass"));
            u.setAddress(rs.getString("location")); 
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
public static User getAdminRecordById(int admin_id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from admin where admin_id=?");  
        ps.setInt(1,admin_id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setUId(rs.getInt("admin_id"));  
            u.setName(rs.getString("name"));  
            u.setUsername(rs.getString("username")); 
            u.setPass(rs.getString("password"));
          
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
} 
public static User getRecordByabldId(int bid){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from bregister where bid=?");  
        ps.setInt(1,bid);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setUId(rs.getInt("bid"));  
            u.setName(rs.getString("name"));  
            u.setEmail(rs.getString("emaill")); 
            u.setMobile(rs.getString("mobile")); 
            u.setAddress(rs.getString("Address")); 
            u.setPass(rs.getString("pass"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
} 
public static User getRecordByhptlaId(int hid){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from hregister where hid=?");  
        ps.setInt(1,hid);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setUId(rs.getInt("hid"));  
            u.setName(rs.getString("name"));  
            u.setEmail(rs.getString("emaill")); 
            u.setMobile(rs.getString("mobile")); 
            u.setAddress(rs.getString("Address")); 
            u.setPass(rs.getString("pass"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
public static User getRecordByrhospitalId(int uid){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from rhospital where uid=? and rstatus='"+"not approved"+"' ");  
        ps.setInt(1,uid);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setUId(rs.getInt("uid"));  
            u.setName(rs.getString("rname"));  
            u.setEmail(rs.getString("remail")); 
            u.setMobile(rs.getString("rnumber")); 
            u.setAddress(rs.getString("rlocation")); 
            u.setbld(rs.getString("rblod"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}