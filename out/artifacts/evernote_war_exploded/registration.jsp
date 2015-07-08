<%@ page import ="java.sql.*"
         import="java.io.*"
        import="java.util.*"%>
         <%--&lt;%&ndash;import "com.brainysoftware.java.StringUtil"%>--%>

<%
    PrintWriter writer = response.getWriter();
    String user = request.getParameter("userEmail");
    String pwd = request.getParameter("userPass");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                "evernoteDB", "0633739768z");

        Statement st = con.createStatement();

//        ResultSet rs;
//        rs = st.executeQuery("SELECT userEmail FROM members WHERE userEmail = '$user()' ");
//        if (rs.equals(user))
//            {
//                writer.print("This email already taken");
//            }

//        String sql = "SELECT userEmail FROM members" + "WHERE userEmail = ' " + StringUtil.fixSQLFieldValue(user) + "'";
//        ResultSet rs = st.executeQuery(sql);
//        if(rs.next()) {
//            rs.close();
//            writer.print("This name already taken!");
//        }
         int i = st.executeUpdate("INSERT INTO members (userEmail, userPass) VALUES ('" + user + "','" + pwd + "')");


        if (i > 0) {
            response.sendRedirect("index.jsp");
        }

    }
    catch(ClassNotFoundException e){
        writer.println("Couldn't load database driver: " + e.getMessage());
    }
    catch(SQLException e){
        writer.println("SQLException caught: " + e.getMessage());
    }
    catch (Exception e) {
        writer.println(e);
    }
%>
