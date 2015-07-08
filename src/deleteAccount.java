import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Created by Yaroslav on 7/2/15.
 */
@WebServlet("/deleteAccount")
public class deleteAccount extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String value = request.getParameter("id");
        int value = Integer.parseInt(request.getParameter("userId"));


        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                    "evernoteDB", "0633739768z");

            Statement st = conn.createStatement();
            st.executeUpdate("DELETE FROM members WHERE userID = '" + value + "'");
//
//            String query = "DELETE FROM note WHERE noteName = ?";
//            PreparedStatement statement = conn.prepareStatement(query);
//            statement.setString(1, value);
//            statement.executeUpdate();
//            Statement st = conn.createStatement();
//
//            st.executeUpdate("DELETE FROM note WHERE noteName='" + value  + "'");

            response.sendRedirect("/index.jsp");

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}