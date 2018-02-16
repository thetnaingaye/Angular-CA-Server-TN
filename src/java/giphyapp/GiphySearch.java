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
import javax.json.JsonArrayBuilder;
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
@WebServlet(urlPatterns = "/searchgiphy/*")
public class GiphySearch extends HttpServlet {
    @Resource(lookup = "jdbc/giphy")
    private DataSource connPool;
    
    JsonArrayBuilder giphyBuilder = Json.createArrayBuilder();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String pathInfo = req.getPathInfo();
        //Assume no error checks
        String username = pathInfo.substring(1);

        try (Connection conn = connPool.getConnection()) {

            PreparedStatement ps = conn.prepareStatement
                ("SELECT * FROM giphy.images where username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                
                JsonObject giphy = Json.createObjectBuilder()
                        .add("username", rs.getString("username"))
                        .add("imageid", rs.getString("imageid"))
                        .build();
                giphyBuilder.add(giphy);

            }
            
            resp.setStatus(HttpServletResponse.SC_OK);
            resp.setContentType(MediaType.APPLICATION_JSON);
            try (PrintWriter pw = resp.getWriter()) {
                pw.println(giphyBuilder.build().toString());

            }
            rs.close();
        } catch (SQLException ex) {
            log(ex.getMessage());
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            return;
        }

    }
    
    
}
