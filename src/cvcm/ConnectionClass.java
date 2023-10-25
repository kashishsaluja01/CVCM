/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cvcm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author kashi
 */

    public class ConnectionClass {
        public Connection con;

    public void Connect()
    {
        try
        {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//sun library jdbc pack odbc subpackJbdcObdcDriver Class
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=dbCVCM;integratedSecurity=true;");//jdsn username of DSN
            System.out.print("Connected");
        }
        catch(Exception ex)
        {
            System.out.print("Error in connection"+ ex);
        }
    }

    public void DisConnect()
    {
        try
        {
            con.close();
             System.out.print("DisConnected");
        }
        catch(Exception ex)
        {
            System.out.print("Error in disconnection"+ ex);
        }

    }
    public static void main(String a[])
    {
    ConnectionClass cobj = new ConnectionClass();
    cobj.Connect();
    cobj.DisConnect();
    }
    }
   