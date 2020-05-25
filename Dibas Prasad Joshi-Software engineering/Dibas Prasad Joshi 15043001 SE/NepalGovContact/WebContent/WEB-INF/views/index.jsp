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
   <h1>Super Admin Control Panel</h1>
</header>
  
<nav>
  <ul>
    <li><a href="#"   id="anchoraddid" class="anchoraddid">Manage Employee</a></li>
       <li><a href="#"   id="transferEmp" class="transferEmp">Transfer Employee</a></li>
    <li><a href="#" id="anchororgaddid" class="anchororgaddid">Manage Ministry</a></li>
    <li><a href="#" id="anchororgtypeaddid" class="anchororgtypeaddid">Manage Org Type</a></li>
    <li><a href="#" id="anchordepttypeaddid" class="anchordepttypeaddid">Manage Department</a></li>
    <li><a href="#" id="anchordeptofficeaddid" class="anchordeptofficeaddid">Manage Dept-Office</a></li>
     <li><a href="#" id="anchorminofficeaddid" class="anchorminofficeaddid">Manage Ministry-Office</a></li>
     <li><a href="#" id="searchoffid" class="searchoffid">Search Office</a></li>
     <li><a href="#" id="addlevelid" class="addlevelid">Add Levels</a></li>
     <li><a href="#" id="addpostid" class="addpostid">Add Position</a></li>
     <li><a href="#"   id="manageUser" class="manageUser">Manage Local Users</a></li>
     <li><a href="#"   id="manageSuperAdminUser" class="manageSuperAdminUser">Manage Super Admin User</a></li>
      <li><a href="#"   id="logout" class="logout">LogOut</a></li>
    
  </ul>
</nav>
<div  class="article" id ="article">

<article>
  <h1>Nepal Government Contact Application</h1>
  <p>This App contains record of All Government Employee</p>
  <p>All Employees of Government of Nepal are Displayed Here</p>
</article>

</div>
<article>
<div id="tableResponse" class ="tableResponse">

<fieldset>
<legend>Main Table </legend>


</fieldset>

</div>
</article>
<footer>Copyright &copy; Amrit Shrestha 2017</footer>

</div>


</body>
</html>
