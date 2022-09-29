<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
input[type=button], input[type=submit] {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}


input[type=button], input[type=reset]{
  background-color:#DC7633;
  border: none;
  color: white;
  padding: 10px 30px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
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

  label {
        display: inline-block;
        width: 250px;
      
      }
      input {
        padding: 5px 10px;
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

  .form {
        margin-bottom: 20px;
          border-bottom: double;
      }

</style>

<meta charset="UTF-8">
<title>Update Member</title>
</head>
<body>
 <!-- Responsive navbar-->
        <div class="nav">
              <input type="checkbox" id="nav-check">
              <div class="nav-header">
                <div class="nav-title d-flex align-items-center">
                  <p class="mb-brand">Update Member</p>
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
                <a href="createmember.jsp">Register New Member</a>   
                <a href= "ListPaymentController">List Online Payment</a> 
                <a href="ListPaymentController2">List Cash Payment</a>
                <a href="ListClaimController">List of Application Claim</a>
                <a href="LogoutAdminController">Logout</a> 
                <a href ="ListMemberController">BACK</a>
                <a></a>
                <a></a>
               

              </div>
        </div>
	
	<form action="UpdateMemberController" method="post" style= "padding:50px 50px 50px 50px; text-align:auto;">
		<div class= "form">
		<label>Member ID</label> :&nbsp; ${m.memberid} <br>
		<label>Member IC Number</label> :&nbsp; ${m.mem_icnum} <br>
		<label>Member Name</label> :&nbsp;${m.mem_name}<br>
		</div>
		
		<label >Member Age</label>:&nbsp;
		<input type="number" name="mem_age" value="<c:out value="${m.mem_age}"/>"/><br>
		<label>Member Address</label>:&nbsp;
		<input type="text" name="mem_address" id= "col-span-75" value="<c:out value="${m.mem_address}"/>"/><br>
		<label>Member Email</label>:&nbsp;
		<input type="text" name="mem_email" value="<c:out value="${m.mem_email}"/>"/><br>
		<label>Member Phone Number</label>:&nbsp;
		<input type="text" name="mem_phonenum" value="<c:out value="${m.mem_phonenum}"/>"/><br>
		<label>Representative Name</label>:&nbsp;
		<input type="text" name="repname" value="<c:out value="${m.repname}"/>"/><br>
		<label>Representative Number</label>:&nbsp;
		<input type="text" name="repnum" value="<c:out value="${m.repnum}"/>"/>
		<input type="hidden" name="memberid" value="<c:out value="${m.memberid}"/>"/><br><br>
		
		<input type="submit" value="Submit"/>
		<input type="reset" value="Reset"/>
	

	</form>
	
	<footer class="footer bg-theme"><p class="m-0 text-center text-white"><b>Copyright &copy; E-Khairat 2022</b></p></footer>
</body>
</html>