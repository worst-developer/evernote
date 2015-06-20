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
  PrintWriter outt = response.getWriter();
  String userid = request.getParameter("userEmail");
  String pwd = request.getParameter("userPass");
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
            "evernoteDB", "0633739768z");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where userEmail='" + userid + "' and userPass='" + pwd + "'");

    if (rs.next()) {
      session.setAttribute("userid", userid);
      outt.println("welcome " + userid);
      //out.println("<a href='logout.jsp'>Log out</a>");
      response.sendRedirect("userNotes.jsp");
    } else {
      outt.println("Invalid password <a href='index.jsp'>try again</a>");
    }
  } catch (Exception ex) {
    outt.println("erorr");
  }

%>