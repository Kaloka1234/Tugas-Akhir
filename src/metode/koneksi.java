/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metode;
import java.sql.*;
/**
 *
 * @author Khafit-PC
 */
public class koneksi {
    public static Connection con;
    public static Statement stm, stmp;
    public static ResultSet rs, rsp;
    public static void config(){
        try{
            String url = "jdbc:mysql://localhost/sicakeo";
            String user = "root";
            String pass = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            stm = con.createStatement();
            stmp = con.createStatement();
        }catch(Exception e){
            System.err.println("koneksi gagal " + e.getMessage());
        }
    }
}
