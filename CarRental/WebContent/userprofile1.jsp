<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
    <%@ page import="DBconnection.connectDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="projects//userprofile.css" rel="stylesheet" type="text/css" >
</head>
<body>
<body>
<%!
String uname=null,userid=null,name=null,phone=null,aadhar=null,state=null,city=null,pin=null;
%>
<%
uname=request.getParameter("k1");
Connection conn=connectDB.Connect();
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from user_registation where email='"+uname+"'");
while(rs.next())
{
	userid=rs.getString("email");
	name=rs.getString("firstname");
	phone=rs.getString("mobileno");
	aadhar=rs.getString("aadhrno");
	state=rs.getString("state");
	city=rs.getString("lanmark");
	pin=rs.getString("pin");
	
}
%>
<div class="container emp-profile">
            <form action="edituser.jsp">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="projects//userprofile.png"/>
                        </div>
                    </div>    
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(userid); %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(name); %></p>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(phone); %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>AADHR NUMBER</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(aadhar); %></p>
                                            </div>
                                        </div>
                            </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>State</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(state); %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>City</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(city); %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Area Pin-Code</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><% out.print(pin); %></p>
                                            </div>
                                        </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</body>
</html>