<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%//prevent Caching of JSP Pages
 response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
//get session and check if session null, go to login page
if(session.getAttribute("currentSessionUser")==null)
	response.sendRedirect("index.html");%>
<%int id = (Integer) session.getAttribute("currentSessionUser");%>
<!DOCTYPE html>
<html>
<head>
<style>
/navbar/
* {
  box-sizing: border-box;
}

body {
  margin: 0px;
  font-family: 'Arial','Verdana';


}

.nav {
  padding: 0px 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 80px;
  width: 100%;
  background-color:#143d59	;
  position: relative;
}

.nav > .nav-header {
  display: inline;
}

.nav > .nav-header > .nav-title {
  display: inline-block;
  font-size: 22px;
  color: #fcc729;
  padding: 10px 10px 10px 10px;
}

.nav > .nav-btn {
  display: none;
}

.nav > .nav-links {
  display: inline;
  float: right;
  font-size: 15px;
  text-transform: uppercase;
}

.nav > .nav-links > a {
  display: inline-block;
  padding: 13px 10px 13px 10px;
  text-decoration: none;
  color: #9fafca;
}

.nav > .nav-links > a:hover {
  background-color: rgba(0, 0, 0, 0.3);

}

.nav > .nav-links > a.active {
 background-color: rgba(255, 255, 255, 0.15)

}

.nav > #nav-check {
  display: none;
}

@media (max-width:800px) {
  .nav > .nav-btn {
    display: inline-block;
    position: absolute;
    right: 0px;
    top: 0px;
    transform: translate(-12px, 14px);
  }
  .nav > .nav-btn > label {
    display: inline-block;
    width: 50px;
    height: 50px;
    padding: 13px;
  }
  .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
    background-color: rgba(0, 0, 0, 0.3);
  }
  .nav > .nav-btn > label > span {
    display: block;
    width: 25px;
    height: 10px;
    border-top: 2px solid #eee;
  }
  .nav > .nav-links {
    position: absolute;
    display: block;
    width: 100%;
    background-color: #323232 ;
    height: 0px;
    transition: all 0.3s ease-in;
    overflow-y: hidden;
    top: 80px;
    left: 0px;
  }

  .nav > .nav-links > a {
    display: block;
    width: 100%;
    padding: 13px 30px 13px 30px;
  }
  .nav > #nav-check:not(:checked) ~ .nav-links {
    height: 0px;
  }
  .nav > #nav-check:checked ~ .nav-links {
    height: calc(100vh - 80px);
    overflow-y: auto;
    z-index: 2;
  }
}
.top-nav{

                background-color: rgba(0,0,0, 0.9);
                color: white;
                flex-flow: row wrap;

            }
input[type=button], input[type=submit] {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

button{
  background-color:#DC7633;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

.footer {
  padding: 0.1px;
  text-align: center;
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #143d59	;
  color: white;
  text-align: center;
}

@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;800&display=swap');


table {
  background-color: white;
  overflow: hidden;
  width: %;
  border-radius: 10px;
  justify-content: center;
  align-items: center;
  min-height: 10px;
  border: solid 1px black;
  text-align:center;
}

th, td {
  font-family:'Motnserrat',sans-serif;
  text-align: left;
  font-size: 16px;
  padding: 10px;
}

th {
  background-color: #7691ab;
  color: white;
}

.btn-delete{
  background-color:#228b22 ;
  color: white;
  cursor: pointer;
  padding: 10px 20px;
  border-radius: 8px;
   font-size: 14px;
    margin-right: 5px;
}

.hint{
border-radius: 10px;
background-color: black; 
padding: 15px 15px;
}
 .hint p{
margin-bottom: 10px;
}
</style>

<meta charset="UTF-8">
<title>View List Cash Payment</title>
</head>
<body>
<!-- Responsive navbar-->
        <div class="nav">
              <input type="checkbox" id="nav-check">
              <div class="nav-header">
                <div class="nav-title d-flex align-items-center">
                  <p class="mb-brand">List Cash Payment</p>
                </div>
              </div>
              <div class="nav-btn">
                <label for="nav-check">
                  <span></span>
                  <span></span>
                  <span></span>
                </label>
              </div>
              
              <div class="nav-links">
                <a href="ManageProfileAdminController">Manage Profile</a>  
                <a href= "createmember.jsp">Register New Member</a>  
                <a href= "ListMemberController">List Member</a>  
                <a href= "ListPaymentController">List Online Payment</a> 
                <a href="ListClaimController">List Application Claim</a>
                <a href="LogoutAdminController">Logout </a>  
                <a href= "ViewAdminController2">Back</a>   
                <a></a>
                <a></a>
                </div>
                </div>
     <form style="padding:50px 50px 50px 350px; text-align:center;">
	<table border="1">
		<tr>
			<th>Payment id</th>
			<th>Date</th>
			<th>Amount</th>
			<th>Member ID</th>
			<th>Payment Made To</th>
			<th>Action</th>
		     <!--  <th colspan="10">Action</th>--->
		</tr>
		<c:forEach items ="${payment}" var="p">
			<tr>
				<td><c:out value="${p.paymentid}"/></td>
				<td><c:out value="${p.payment_date}"/></td>
				<td><c:out value="RM${p.payment_amount}"/></td>
				<td><c:out value="${p.memberid}"/></td>
				<td><c:out value="${p.adminname}"/></td>
				<td><a class="btn-delete" href="DeleteCashPaymentController?paymentid=<c:out value="${p.paymentid}"/>"onclick= "confirmation(this.id)">Payment receive</a></td>
			
		</tr>
		</c:forEach>
		
		
	</table>
	
		<script>
		function confirmation(id) {
			console.log(id);
			var r = confirm("Are you sure payment have been received?");
			if (r == true) {
				location.href = 'DeleteCashPaymentController?paymentid=' + id;
				alert("Cash Payment successfully received");
			} else {
				return false;
			}
		}
		</script>
	
	</form>
	 <footer class="footer bg-theme"><p class="m-0 text-center text-white"><b>Copyright &copy; E-Khairat 2022</b></p></footer>	
	
</body>
</html>