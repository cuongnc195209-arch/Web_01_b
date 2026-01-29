/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import dbutils.dbutils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Cuong
 */
public class UserDAO {

    public ArrayList<UserDTO> list = new ArrayList<>();

    public UserDAO() {
    }

    public UserDTO searchById(String username) {
        try {
            Connection conn = dbutils.getConnection();
            String sql = "SELECT * FROM tblUsers "
                    + " WHERE userID=?";
            System.out.println(sql);
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();

            UserDTO user = null;

            while (rs.next()) {
                String userID = rs.getString("userID");
                String fullname = rs.getString("fullname");
                String password = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");
                user = new UserDTO(userID, fullname, password, roleID, status);
            }

            return user;
        } catch (Exception e) {
            return null;
        }

    }
    
    public UserDTO login(String username,String password){
        UserDTO u=searchById(username);
        if(u!=null&&u.getPassword().equals(password)){
            return u;
        }
        return null;
    }

    public UserDTO login(UserDTO user, String pass) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
