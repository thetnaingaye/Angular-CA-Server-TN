/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package giphyapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.annotation.Resource;
import javax.json.Json;
import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author mmu1t
 */
@WebServlet(urlPatterns = "/savegiphy/*")
public class GiphySave extends HttpServlet{
    @Resource(lookup = "jdbc/giphy")
    private DataSource connPool;
    
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String pathInfo = req.getPathInfo();
        //Assume no error checks
        //getting two values by string split eg. /S66-Company66 to "S66" and "Company66"
        String splitarray[] = pathInfo.split("-");
        String username = splitarray[0].substring(1);
        String imageid = splitarray[1];

        try (Connection conn = connPool.getConnection()) {
                 
           PreparedStatement ps = conn.prepareStatement
                ("INSERT INTO giphy.images VALUES (?,?)");

            ps.setString(1, username);
            ps.setString(2, imageid);
            
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            log(ex.getMessage());
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            return;
        }

    }
    
    
}
