package com.thinking.machines.employees.dao;
import java.sql.*;
import com.thinking.machines.employees.dao.DAOException;
public class DAOConnection {
private Connection connection=null;
public static Connection getConnection(String connectionString) throws DAOException{
try{
Class.forName("org.apache.derby.jdbc.ClientDriver");
return DriverManager.getConnection(connectionString);
}catch(Exception e){
throw new DAOException(e.getMessage());
}
}//getConnection ends

public void setConnection(Connection connection){
this.connection=connection;
}
public Connection getConnection(){
return this.connection;
}

}//class ends
