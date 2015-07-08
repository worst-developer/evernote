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
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
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
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" id="meeting">Meeting</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" id="note">Note</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" id="reminder" >Reminder</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                </ul>

                                        <textarea style="display: none" type="text" class="form-control" rows="5" id="textArea" name="note" value=""></textarea>
                                    </div>

                                    <div class="container">
                                        <div class='col-sm-3'>
                                            <div class="form-group">
                                                <div style="display: none" class='input-group date' id='datetimepicker6'>
                                                    <input  type='text' class="form-control" name="reminderFrom"/>
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class='col-sm-3'>
                                            <div class="form-group">
                                                <div style="display: none" class='input-group date' id='datetimepicker7'>
                                                    <input type='text' class="form-control" name="reminderTo"/>
                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-calendar"></span>
                                                        </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div  class="container" >
                                        <div class="row">
                                            <div class='col-sm-3'>
                                                <div class="form-group">
                                                    <div style="display: none" class='input-group date' id="datetimepicker1">
                                                        <input type='text' class="form-control" name="Date"/>
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
                                    <td id="checkboxDone" ></td>
                                    <td id="noteNameRow">note name</td>
                                    <td>note</td>
                                    <td>time</td>
                                    <td></td>
                                    <td></td>

                                </tr>
                                    <%
                                        PrintWriter writer = response.getWriter();
                                        try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evernoteDB",
                                                            "evernoteDB", "0633739768z");


                                                    Statement st = con.createStatement();
                                                    ResultSet rs;
                                            Statement statement = con.createStatement();
                                            ResultSet resultSet;
                                            resultSet = statement.executeQuery("SELECT * FROM members");
                                                    rs = st.executeQuery("SELECT * FROM note");
//                                            String query = "SELECT * FROM note";
//                                            PreparedStatement statement = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//                                            statement.executeUpdate();

                                                    while (rs.next())
                                                        { %>
                                                            <tr>
                                                                <td><input type="checkbox" name="checkboxList" value="0"></td>
                                                                <td><%=rs.getString(1) %></td>
                                                                <td id="noteName"><%=rs.getString(2) %></td>
                                                                <td ><%=rs.getString(3)%> <%=rs.getString(6)%></td>
                                                                <%--<td><i class="fa fa-pencil-square-o" data-toggle="modal" data-target=".bs-example-modal-lg"></i></td>--%>
                                                                <td><i class="fa fa-pencil-square-o"></i></td>
                                                                <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                                                                    <%--&lt;%&ndash;<a href=deleteData?id=<%=rs.getString(1) %>><button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg" id="btnCreateNewNotee">CREATE NEW NOTE</button></a>&ndash;%&gt;--%>
                                                                <%--&lt;%&ndash;<div class="modal fade bs-example-modal-lg" tabindex="-1">&ndash;%&gt;--%>
                                                                    <%--&lt;%&ndash;<div class="modal-dialog modal-lg">&ndash;%&gt;--%>
                                                                        <%--&lt;%&ndash;<div class="modal-content">&ndash;%&gt;--%>

                                                                            <%--&lt;%&ndash;<div class="modal-header">&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;<button type="button" class="close" data-dismiss="modal">&times;</button>&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;<h5>Note Name:</h5>&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;<input type="text" class="form-control" value="<%=rs.getString(1)%>" placeholder="type note header" name="updateNoteName">&ndash;%&gt;--%>
                                                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                                                                            <%--&lt;%&ndash;<div class="modal-body">&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;<textarea  type="text" class="form-control" rows="5" value="" name="updateNote"><%=rs.getString(2)%></textarea>&ndash;%&gt;--%>
                                                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                                                                            <%--&lt;%&ndash;<div  class="container" >&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;<div class="row">&ndash;%&gt;--%>
                                                                                    <%--&lt;%&ndash;<div class='col-sm-3'>&ndash;%&gt;--%>
                                                                                        <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
                                                                                            <%--&lt;%&ndash;<div style="display: none" class='input-group date'>&ndash;%&gt;--%>
                                                                                                <%--&lt;%&ndash;<input type='text' class="form-control" />&ndash;%&gt;--%>
                                                                                                    <%--&lt;%&ndash;<span class="input-group-addon">&ndash;%&gt;--%>
                                                                                                        <%--&lt;%&ndash;<span class="glyphicon glyphicon-calendar"></span>&ndash;%&gt;--%>
                                                                                                    <%--&lt;%&ndash;</span>&ndash;%&gt;--%>
                                                                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                                        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                                                                            <%--&lt;%&ndash;<div class="modal-footer">&ndash;%&gt;--%>
                                                                                <%--&lt;%&ndash;<button class="btn btn-success" type="submit">Save</button>&ndash;%&gt;--%>
                                                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                                <%--</td>--%>
                                                                <td id="close">
                                                                <a href=deleteData?id=<%=rs.getInt(4)%>><button onclick="deleteRow()" type="button" class="close" data-dismiss="modal">&times;</button></a>
                                                                </td>
                                                            </tr>
                                <%  }
                                    resultSet.close();
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
                                <%--<%--%>
                                    <%--}--%>
                                        <%--while (resultSet.next()) {--%>
                                <%--%>--%>
                             </table>
                        </div>
                <a href="index.jsp"<button type="button" onclick="Logout()" class="btn btn-warning" id="btnLogout">Logout</button> </a>
                <a href="" ><button type="button" onclick="DeleteAccount()" class="btn btn-danger" id="btnDelete">DeleteAccount</button> </a>

                        </form>
                </body>
          </html>
