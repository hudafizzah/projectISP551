<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
button{
  background-color:#6b9bd1;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: auto;
  cursor: pointer;
  text-align:center;

}

form{
  position: absolute;
  top: 50%;
  left: 50%;
  width: auto;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: white;
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
  font-family: verdana;
   font-size: 20px;

}
h2{
   text-align: center;
}
label {
        display: inline-block;
        width: 250px;
      
      }
input {
        padding: 13px 60px;
        width:100%
        margin:5px 0 22px 0;
        display:inline- block;
        border:none;
        background: #f1f1f1;
      }
      
input[type=button], input[type=submit] {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: 5px 2px;
  cursor: pointer;
  border-radius:10px;
}


input[type=button], input[type=reset]{
  background-color:#DC7633;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: 5px 2px;
  cursor: pointer;
  border-radius:10px;
}
.col-span-25{
	float:left;
	width:25%;
	margin-top:6px;
}

.col-span-75{
	float:left;
	width:75%;
	margin-top:6px;
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

</style>
<meta charset="UTF-8">
<title>Register Member</title>
</head>
<body>
 <!-- Responsive navbar-->
        <div class="nav">
              <input type="checkbox" id="nav-check">
              <div class="nav-header">
                <div class="nav-title d-flex align-items-center">
                  <p class="mb-brand">Register Member</p>
                </div>
              </div>
            
              
              <div class="nav-links">
                <a href="ManageProfileAdminController">Manage Profile</a>   
                <a href= "ListMemberController">List Member</a>  
                <a href= "ListPaymentController">List Online Payment</a> 
                <a href="ListPaymentController2">List Cash Payment</a>
                <a href="ListClaimController">List Application Claim</a>
                <a href="LogoutAdminController">Logout</a> 
                <a href = "ViewAdminController2">BACK</a>
                <a></a>
                 <a></a>
              </div>
        </div>

	<form style= "padding:50px 50px 50px 50px; text-align:left;" action="CreateMemberController" method="post">
		<table>
			<tbody>
                   <tr>
                       <th id="col-span-25"><label for="fullname">Full Name</label></th>
                       <th id="col-span-75"><input type="text"  name="mem_name" placeholder="FULLNAME CAPITAL LETTER"></th>
                   </tr>
                   <tr>
                       <th id="col-span-25"><label for="memIC">IC Number</label></th>
                       <th id="col-span-75"><input type="text"  name="mem_icnum" placeholder="000000000000-NO DASH"></th>
                   </tr>
                   <tr>
                       <th id="col-span-25"><label for="age">Age</label></th>
                       <th id="col-span-75"><input type="number"  name="mem_age"></th>
                   </tr>
                   
                   <tr>
                       <th id="col-span-25"><label for="address">Address</label></th>
                       <th id="col-span-75"><input type="text"  name="mem_address"></th>
                       
                   </tr>
                   <tr>
                       <th id="col-span-25"><label for="phoneNumber">Phone Number</label></th>
                       <th id="col-span-75"><input type="text"  name="mem_phonenum" placeholder="000-00000000"></th>
                   </tr>
                   <tr>
                       <th id="col-span-25"><label for="repName">Representative Name</label></th>
                       <th id="col-span-75"><input type="text"  name="repname" placeholder="FULLNAME CAPITAL LETTER"></th>
                   </tr>
                   <tr>
                       <th id="col-span-25"><label for="repIC">Representative IC Number</label></th>
                       <th id="col-span-75"><input type="text"  name="repnum" placeholder="000000000000-NO DASH"></th>
                   </tr>
                   <tr>
                       <th id="col-span-25"><label for="memEmail">Email</label></th>
                       <th id="col-span-75"><input type="email"  name="mem_email" placeholder="abc@gmail.com"></th>
                   </tr>
              
			</tbody>
		</table>
		
		<input type="submit" value= "submit">
        <input type="reset"  value = "reset">
	</form>
</body>
<footer class="footer bg-theme"><p class="m-0 text-center text-white"><b>Copyright &copy; E-Khairat 2022</b></p></footer>
</html>