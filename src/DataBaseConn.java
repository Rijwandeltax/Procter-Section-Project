/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;

/**
 *
 * @author ravi
 */
public class DataBaseConn {
    public  DataBaseConn(){} 
    public Connection createConnection(){
    
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecb_tpo?autoReconnect=true&useSSL=false","root","internet");
            return con;
        }catch(Exception e){
            System.out.println("Error");
            return null;
        }  
    
    }
}
