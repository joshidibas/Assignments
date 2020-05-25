<!DOCTYPE html>
<html>
<head>


<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >

<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
</head>
<body>
<%
    if ((session.getAttribute("org_type_code") == null) ) {
    	response.sendRedirect("/NepalGovContact/error");
%>

<%} %>
<div class="container">

<header>
   <h1>Local Admin Control Panel</h1><h1>(<%= session.getAttribute("org_name") %>)</h1>
</header>
  
<nav>
  <ul>
    <li><a href="#"   id="add_local_emp" class="add_local_emp">Manage Employee</a></li>
    <li><a href="#"   id="logout" class="logout">LogOut</a></li>  
    
    
    
    
  </ul>
</nav>
<div  class="article" id ="article">

<article>
  <h1>NePal Gov Contal App</h1>
  <p>This App contais record of All Government Employee</p>
  <p>All Employees of Governmen of Nepal are Displaed Here</p>
</article>

</div>
<article>
<div id="tableResponse" class ="tableResponse">

<fieldset>
<legend>Main Table </legend>


</fieldset>

</div>
</article>
<footer>Copyright &copy; islingtoncollege.edu.np</footer>

</div>

<input id='mv' type='hidden' value='${sessionScope.org_code}'/> 
</body>
</html>
