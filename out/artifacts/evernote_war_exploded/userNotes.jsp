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
          </head>
                <body>

                        <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg">CREATE NEW NOTE</button>

                        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">

                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h5>new note</h5>
                                        <input type="text" class="form-control" placeholder="type note header">
                                    </div>

                                    <div class="modal-body">
                                            <h4>Chose note type:</h4>

                                        <button id="dropdownButton" class="btn btn-default dropdown-toggle" id="menu1" type="button" data-toggle="dropdown">Dropdown Example
                                            <span class="caret"></span></button>

                                                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                    <li role="presentation"><a role="menuitem" tabindex="-1">Meeting</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" id="note">Note</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" >Reminder</a></li>
                                                         <li role="presentation" class="divider"></li>
                                                </ul>

                                        <textarea style="display: none" class="form-control" rows="5" id="textArea"></textarea>
                                    </div>

                                    <div class="modal-footer">
                                        <button class="btn btn-success" type="SUBMIT">Save</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                <table class="table table-striped">
                  <tr>
                      <td>
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                          </label>
                        </div>
                      </td>

                    <td>
                      <select class="form-control">
                        <option>встеча</option>
                        <option>напоминание</option>
                        <option>заметка</option>
                      </select>
                    </td>

                    <td>surname</td>
                    <td>время</td>
                  </tr>
                </table>
                <textarea class="form-control" rows="3"></textarea>

                <a href="index.jsp"<button type="button" class="btn btn-danger">Logout</button> </a>

                </body>
          </html>
