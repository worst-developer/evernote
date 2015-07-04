<%--
  Created by IntelliJ IDEA.
  User: Yaroslav
  Date: 6/20/15
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%--<button value="delete" onclick="deleteData?noteName=<%=rs.getString(1)%>" >button</button>--%>

<%--<input type="button" name="delete" value="Delete" onclick="deleteData?id=<%=rs.getString(1)%>;">--%>

<%--<input type="submit" name="delete_user" value="Delete" />--%>
<%--<input type="hidden" name="user" value="<%=rs.getString(1)%>" />--%>
<%--<td><button onclick="deleteRow(<%=rs%>);" <% statement.executeUpdate("delete from note where id  =" + id); %> type="button" class="close" data-dismiss="modal" value="delete" >&times;</button></td>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styleShit.css">
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/init.js"></script>
    <title>Profile</title>

    <%@ page import ="java.sql.*"
             import="java.io.*" %>

          </head>
                <body>
                        <form method="post" action="newNote.jsp">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg" id="btnCreateNewNote">CREATE NEW NOTE</button>

                        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">

                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h5>New Note:</h5>
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

                                    <div  class="container" >
                                        <div class="row">
                                            <div class='col-sm-3'>
                                                <div class="form-group">
                                                    <div style="display: none" class='input-group date' id='datetimepicker1'>
                                                        <input type='text' class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button class="btn btn-success" type="submit" id="save">Save</button>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div id="table">
                            <table id="notes" class="table table-striped">
                                <tr>
                                    <td id="checkboxDone"></td>
                                    <td id="noteNameRow">note name</td>
                                    <td>note</td>
                                    <td>time</td>
                                    <td></td>
                                </tr>
                                    <%
                                        PrintWriter writer = response.getWriter();
    //                                    int id = Integer.parseInt(request.getParameter("r"));
                                        try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                                                        "evernoteDB", "0633739768z");

                                                Statement st = con.createStatement();
                                                ResultSet rs;
                                                rs = st.executeQuery("SELECT * FROM note");

                                                while (rs.next())
                                                    { %>
                                                        <tr>
                                                            <td><input type="checkbox"></td>
                                                            <td id="noteName"><%=rs.getString(1) %></td>
                                                            <td><%=rs.getString(2) %></td>
                                                            <td>time</td>
                                                            <td id="close">
                                                                <a href=deleteData?id=<%=rs.getString(1) %>><button onclick="deleteRow()" type="button" class="close" data-dismiss="modal">&times;</button></a>
                                                            </td>
                                                        </tr>

                                                    <% }
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
                        </div>
                <a href="index.jsp"<button type="button" class="btn btn-danger">Logout</button> </a>
                        </form>
                </body>
          </html>
