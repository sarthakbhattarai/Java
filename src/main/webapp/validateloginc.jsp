<%@page import="com.entity.cart"%>
<%@page import="com.dao.DAO2"%>
<%@page import="com.entity.customer"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.*,java.io.*,java.text.*,java.util.*" %> 
<%@page import="com.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Customer</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
</head>
<body>
<%
String Ab = null;
String N = null;
String Total3 = request.getParameter("Total");
String CusName3 = request.getParameter("CusName");

if(request.getCookies() != null) {
    Cookie[] rc = request.getCookies();
    int flag = 0;
    for(int i = 0; i < rc.length; i++) {
        if(rc[i].getName().equals("cname")) {
            flag = 1;
            Ab = rc[i].getValue();
            DAO dao = new DAO(DBConnect.getConn());
            List<customer> listbbb = dao.getCustomer(Ab);
            for(customer ccc : listbbb) {
                N = ccc.getName();    
            }
        }
    }
    if(flag != 1) {
        response.sendRedirect("customerlogin.jsp?Total=" + Total3 + "&CusName=" + CusName3);
    }
}

int tcqty = 0;
DAO2 daocqty = new DAO2(DBConnect.getConn());
List<cart> listq = daocqty.getcart(N);
for(cart v : listq) {
    tcqty += v.getPquantity();
}
%>
</body>
</html>
