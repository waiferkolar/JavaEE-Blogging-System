package coder.Impls;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserImpl {

    public boolean insertUser(Connection con, String username, String email, String password) {
        boolean bol = false;

        PreparedStatement stmt = null;

        String query = "INSERT INTO users (name,email,password) VALUES (?,?,?)";

        try {
            stmt = con.prepareStatement(query);

            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);

            int result = stmt.executeUpdate();

            if (result == 1) {
                bol = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bol;
    }

    public boolean checkEmailInUse(Connection con, String email) {
        boolean bol = false;

        String query = "SELECT * FROM users WHERE email=?";
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement(query);

            stmt.setString(1, email);

            ResultSet set = stmt.executeQuery();

            bol = set.first();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bol;
    }
}
