<%--
  Created by IntelliJ IDEA.
  User: Yaroslav
  Date: 6/20/15
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/init.js"></script>
    <title>Profile</title>

    <%@ page import ="java.sql.*"
             import="java.io.*" %>

          </head>
                <body>
                        <form method="post" action="newNote.jsp">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg">CREATE NEW NOTE</button>

                        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">

                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h5>new note</h5>
                                        <input type="text" class="form-control" name="noteName" value="" placeholder="type note header">
                                    </div>

                                    <div class="modal-body">
                                            <h4>Chose note type:</h4>

                                        <button id="dropdownButton" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
                                            <span class="caret"></span></button>

                                                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                    <li role="presentation"><a role="menuitem" tabindex="-1">Meeting</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" id="note">Note</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" >Reminder</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                </ul>

                                        <textarea style="display: none" type="text" class="form-control" rows="5" id="textArea" name="note" value=""></textarea>
                                    </div>

                                    <div class="modal-footer">
                                        <button class="btn btn-success" type="submit">Save</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                            <table id="notes" border="2">
                                <tr>

                                    <td>note name</td>
                                    < td>note</td>

                                </tr>
                                <%
                                    PrintWriter writer = response.getWriter();
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                                                "evernoteDB", "0633739768z");

                                        Statement st = con.createStatement();
                                        ResultSet rs;
                                        rs = st.executeQuery("SELECT * FROM note");

                                        while (rs.next())
                                        {
                                %>
                                <tr>
                                    <td><%=rs.getString("noteName") %></td>
                                    <td><%=rs.getString("note") %></td>
                                    <td><button onclick="deleteRow(this)"
                                            <%
                                        Statement state = con.createStatement();
                                        state.executeUpdate("DELETE * FROM note");
                                            %>
                                        type="button" class="close" data-dismiss="modal" id="deleteNote">&times;</button></td>
                                </tr>
                                <%

                                        }
                                        rs.close();
                                        st.close();
                                        con.close();
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
                            </table>


                <a href="index.jsp"<button type="button" class="btn btn-danger">Logout</button> </a>
                        </form>
                </body>
          </html>
