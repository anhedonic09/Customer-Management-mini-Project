import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class ConnectionListener implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent sce) 
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspd","root","mysql");
			ServletContext context=sce.getServletContext();
			String query="insert into customerinfo values(?,?,?,?,?,?)";
			PreparedStatement psave=cn.prepareStatement(query);
			context.setAttribute("save", psave);		
			Statement st=cn.createStatement();
			context.setAttribute("st", st);
			query="delete from customerinfo where cid=?";
			PreparedStatement pdelete=cn.prepareStatement(query);
			context.setAttribute("delete",pdelete);
			query="select * from customerinfo where cid=? ";
			PreparedStatement select=cn.prepareStatement(query);
			context.setAttribute("select", select);
			query="update customerinfo set firstname=?,lastname=?,address=?,phone=?,emailid=? where cid=?";
			PreparedStatement update=cn.prepareStatement(query);
			context.setAttribute("update", update);
			
			Statement addr=cn.createStatement();
			context.setAttribute("addr", addr);
			query="select * from customerinfo where address=? ";
			PreparedStatement city=cn.prepareStatement(query);
			context.setAttribute("city",city);
			query="select * from customerinfo where firstname=? ";
			PreparedStatement first=cn.prepareStatement(query);
			context.setAttribute("first",first);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
	
}
