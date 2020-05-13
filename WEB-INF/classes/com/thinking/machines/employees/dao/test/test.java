import java.sql.*;
import com.thinking.machines.employees.dao.DAOConnection;

class psp
{
public static void main (String gg[])
{
try
{
Connection c = DAOConnection.getConnection("jdbc:derby://localhost:1527/db/tmplacements;create=true");
System.out.println();
}catch(Exception e)
{
System.out.println(e);
}
}
}