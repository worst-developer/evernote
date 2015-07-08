<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="java.sql.*"
         import="java.io.*" %>
<%
  PrintWriter writer = response.getWriter();
  String noteName = request.getParameter("noteName");
  String note = request.getParameter("note");
    String updateNoteName = request.getParameter("updateNoteName");
    String updateNote = request.getParameter("updateNote");
    String value = request.getParameter("id");
    String date = request.getParameter("Date");
    String reminderFrom = request.getParameter("reminderFrom");
    String reminderTo = request.getParameter("reminderTo");


    String checkbox = request.getParameter("checkboxList");
    String checkboxValue;
        if(checkbox == null) {
            checkboxValue = "0";
        } else  { checkboxValue = "1";}

  try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                "evernoteDB", "0633739768z");

          String query = "INSERT INTO note (noteName, note, date, dateTo, checkbox) VALUES (?,?,?,?,?)";
          PreparedStatement statement = con.prepareStatement(query);
          statement.setString(1, noteName);
          statement.setString(2, note);
          statement.setString(3, date);

          statement.setString(3, reminderFrom);
          statement.setString(4, " - " + reminderTo);

          statement.setString(5, checkboxValue);
          statement.executeUpdate();

//      Statement st = con.createStatement();
//      Statement updateSt = con.createStatement();
//      st.executeUpdate("INSERT INTO note (noteName, note, date, checkbox ) VALUES ('" + noteName + "','" + note + "', '" + date + "','" + checkbox + "')");

      response.sendRedirect("/userNotes.jsp");
      }
          catch(ClassNotFoundException e)
            {
              writer.println("Couldn't load database driver: " + e.getMessage());
            }
          catch(SQLException e)
            {
              writer.println("SQLException caught: " + e.getMessage());
            }
          catch (Exception e)
            {
              writer.println(e);
            }
    %>
