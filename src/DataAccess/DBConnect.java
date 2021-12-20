/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 20002 Dec 16, 2021 12:41:13 PM
 */

public class DBConnect {

    public static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static String url = "jdbc:sqlserver://localhost:1433;databaseName=QLTH";
    public static String user = "sa";
    public static String pass = "12345";
    public static Connection cnn;

    public static boolean open() {
        try {
            if (cnn == null || cnn.isClosed()) {
                Class.forName(driver);
                cnn = DriverManager.getConnection(url, user, pass);
            }
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static void close() {
        try {
            if (cnn != null) {
                cnn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void close(PreparedStatement ps) {
        try {
            if (ps != null) {
                ps.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        close();
    }

    public static void close(PreparedStatement ps, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        close(ps);
    }
}
