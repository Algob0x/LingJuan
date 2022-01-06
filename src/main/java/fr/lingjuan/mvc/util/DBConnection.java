package fr.lingjuan.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection createConnection()
    {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/project"; //ADRESSE SUIVIE DU NOM DE LA BDD
        String username = "root";
        String password = "root123";
        System.out.println("In DBConnection.java class ");

        try
        {
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver"); //ON CHARGE LES DRIVERS MYSQL
            }
            catch (ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            con = DriverManager.getConnection(url, username, password); //ON SE CONNECTE A LA BDD
            System.out.println("Printing connection object "+con);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
