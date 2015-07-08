//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.*;
//import java.io.*;
//
///**
// * Created by Yaroslav on 7/5/15.
// */
//@WebServlet(name = "newNote")
//public class newNote extends HttpServlet {
////    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////
////    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        PrintWriter writer = response.getWriter();
//        String noteName = request.getParameter("noteName");
//        String note = request.getParameter("note");
//
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
//                    "evernoteDB", "0633739768z");
//
//            Statement st = con.createStatement();
//
//
//            st.executeUpdate("INSERT INTO note (noteName, note) VALUES ('" + noteName + "','" + note + "')");
//
//
//
//            response.sendRedirect("/userNotes.jsp");
//        }
//        catch(ClassNotFoundException e)
//        {
//            writer.println("Couldn't load database driver: " + e.getMessage());
//        }
//        catch(SQLException e)
//        {
//            writer.println("SQLException caught: " + e.getMessage());
//        }
//        catch (Exception e)
//        {
//            writer.println(e);
//        }
//    }
//}
