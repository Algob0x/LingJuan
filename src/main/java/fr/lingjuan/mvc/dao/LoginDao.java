package fr.lingjuan.mvc.dao;

import fr.lingjuan.mvc.bean.LoginBean;
import fr.lingjuan.mvc.util.DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {

    public String authenticateUser(LoginBean loginBean)
    {
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";
        String roleDB = "";

        try
        {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select username,password,role from users");

            while(resultSet.next())
            {
                userNameDB = resultSet.getString("userName");
                passwordDB = resultSet.getString("password");
                roleDB = resultSet.getString("ROLE");

                if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
                    return "Admin_Role";
                else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Moderator"))
                    return "Moderator_Role";
                else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("User"))
                    return "User_Role";
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return "Informations de connexion incorrectes";
    }
}
