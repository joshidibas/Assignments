<html>
<head>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/department_add.js"></script>

</head>
<body>

 
<form method="POST" action="/NepalGovContact/loginCheck" style=" margin-left: 170px;border-left: 0px solid gray;padding: 1em;overflow: hidden;">
<TABLE BORDER="1">
  
  
  <TR>
    <TD>User Name:</TD>
    <TD><INPUT TYPE="TEXT" NAME="user_name" id="user_name" SIZE="25"></TD>
  </TR>
  <TR>
    <TD>Password:</TD>
    <TD><INPUT TYPE="TEXT" NAME="password" id="password" SIZE="25"></TD>
  </TR>
  
  
</TABLE>

<input type="submit" name="login" id ="login" value="LOGIN">
<input type="hidden" name="mypage" value="entry_ministry">
</form>

</body>
<div id="ajaxResponse">

</div>

</html>