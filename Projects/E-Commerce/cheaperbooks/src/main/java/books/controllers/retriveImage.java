package books.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Vishal.Gilbile
 */
@WebServlet("/retriveImage")
public class retriveImage extends HttpServlet {

    Connection con;
    Statement stat;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        response.setContentType("image/jpeg");
        //PrintWriter out = response.getWriter();
        Blob ePhoto = null;
        byte[] rawBytes = null;
        ServletOutputStream out = response.getOutputStream();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            //byte[] rawBytes = null;
            String id = request.getQueryString();
            String id2 =request.getParameter("adsid");
            System.out.println("Retrieved"+id);
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=cheaperbooks_db;integratedSecurity=true");
            String sql;
            sql="SELECT image FROM tbl_ads WHERE empid="+id+"";
            System.out.println(sql);
            stat=con.createStatement();
            ResultSet rs=stat.executeQuery(sql);
            while(rs.next())
            {          
	            rawBytes = rs.getBytes(1);
	            System.out.println(rawBytes);
	            out.write(rawBytes);
	            out.flush();
	            stat.close();
            }

        } catch (Exception ex) {
            out.println(ex.getMessage());
        } finally {
            try {
                con.close();
                out.close();
            } catch (Exception ex) {
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
