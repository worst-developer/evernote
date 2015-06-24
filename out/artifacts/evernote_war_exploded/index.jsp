<%--
  Created by IntelliJ IDEA.
  User: Yaroslav
  Date: 6/16/15
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link href="css/styleShit.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <title></title>
  </head>
        <body>
        <form method="post" action="login.jsp">
        <div class="col-md-12">
          <div class="form">
              <div class="hello">
                  <h1>Sign in</h1>
              </div>

              <form>
                <div class="form-group">

                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" name="userEmail" value="" class="form-control" id="exampleInputEmail1" placeholder="Email">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" name="userPass" value="" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <button type="submit" id="btnSubmit" value="Submit" class="btn-block btn-lg btn btn-success">Submit</button>
              </form>
            <div class="link">
              <a href="createAccount.jsp"><h5>Create Account</h5></a>
            </div>
          </div>
            </div>
            </form>
        </body>
</html>
