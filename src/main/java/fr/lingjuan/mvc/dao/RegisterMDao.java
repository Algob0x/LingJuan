package fr.lingjuan.mvc.dao;


import fr.lingjuan.mvc.bean.RegisterMBean;
import fr.lingjuan.mvc.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterMDao {
    public String registerUser(RegisterMBean registerMBean)
    {
        String fullName = registerMBean.getFullName();
        String email = registerMBean.getEmail();
        String userName = registerMBean.getUserName();
        String password = registerMBean.getPassword();
        String role = registerMBean.getRole();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try
        {
            con = DBConnection.createConnection();
            String query = "insert into users(S1No,fullName,Email,userName,password,ROLE) values (NULL,?,?,?,?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, fullName);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, userName);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5,  "Moderator");

            int i= preparedStatement.executeUpdate();

            if (i!=0)  //VERIFICATION
                return "Connexion réussie";
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return "Oops.. ça n'a pas marché";
    }
}

