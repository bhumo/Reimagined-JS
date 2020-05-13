package com.thinking.machines.employees.servlets;
import com.thinking.machines.employees.beans.*;
import com.thinking.machines.employees.dao.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AddAdminServlet extends HttpServlet{

public void doPost(HttpServletRequest rq,HttpServletResponse rs){

try{
String username = rq.getParameter("username");
String pass_key1= rq.getParameter("pass-key1");
pass_key1=pass_key1.trim();
ServletContext sc=getServletContext();
DAOConnection daoConnection = (DAOConnection)sc.getAttribute("connection");
Connection c=daoConnection.getConnection();
if(c==null){
String absolutePath=sc.getRealPath("WEB-INF");
absolutePath=absolutePath+File.separator+"Script";
File dbFile = new File(absolutePath+File.separator+"db.info");
RandomAccessFile raf = new RandomAccessFile(dbFile,"rw");
String dbName = raf.readLine().trim();
String server = raf.readLine();
int portNumber = Integer.parseInt(raf.readLine());
String connectionString="jdbc:derby://"+server+":"+portNumber+"/"+dbName+";create=true";
System.out.println(connectionString);
c = DAOConnection.getConnection(connectionString);
}
Statement s =c.createStatement();
String query="insert into adminstrator(username,password,password_key) VALUES('"+username+"', '"+pass_key1+"', '"+pass_key1+"')";
System.out.println(query);
int success=s.executeUpdate(query);

RequestDispatcher rqd=rq.getRequestDispatcher("/index.jsp");
rqd.forward(rq,rs);
}catch(Exception e){
System.out.println(e);
}

}
};