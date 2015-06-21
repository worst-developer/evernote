<%--
  Created by IntelliJ IDEA.
  User: Yaroslav
  Date: 6/20/15
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page import ="java.sql.*"
         import="javax.servlet.http.*"
         import="javax.servlet.*"
         import="java.io.*" %>
<%
  PrintWriter writer = response.getWriter();
  String userEmail = request.getParameter("userEmail");
  String pwd = request.getParameter("userPass");
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
            "evernoteDB", "0633739768z");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM members WHERE userEmail='" + userEmail + "' AND userPass='" + pwd + "'");
    if (rs.next()) {
      request.setAttribute("userEmail", userEmail);
      writer.println("welcome " + userEmail);
      //writer.println("<a href='logout.jsp'>Log out</a>");
      response.sendRedirect("userNotes.jsp");
    } else {
      writer.println("Invalid password <a href='index.jsp'>try again</a>");
    }
  } catch (SQLException e) {
    writer.println("error");
  }
%>