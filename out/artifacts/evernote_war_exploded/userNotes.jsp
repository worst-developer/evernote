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
    <title>Profile</title>
          </head>
                <body>
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
