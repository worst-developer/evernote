import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;
import java.sql.*;

/**
 * Created by Yaroslav on 7/2/15.
 */
@WebServlet("/deleteData")
public class deleteData extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();


        String value = request.getParameter("id");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                    "evernoteDB", "0633739768z");


            Statement st = conn.createStatement();

            st.executeUpdate("DELETE FROM note WHERE noteName='" + value + "'");
            out.print(value);
                response.sendRedirect("/userNotes.jsp");

            conn.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
//            String query = "DELETE FROM note WHERE noteName="+value;
//        int value = Integer.parseInt(request.getParameter("id"));