
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import ="java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
           
        <% 
        String un = request.getParameter("username");
        String pw = request.getParameter("password");
       
      
       
try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull", "root", "amani");
          
            
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery("select  Formateur_idFormateur, Apprenant_idAprenant from client where identifiant='" + un + "' and motdepasse='" + pw + "'");
     
                
      if (rs.next()) {
        session=request.getSession();
        session.setAttribute("identifiant", un);
        //out.println("welcome " + un);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("/MiniProjet/listeformations");
    } 
      else{
         
          response.sendRedirect("/MiniProjet/erreur");
    
      }
     
   
    
    
    
     
   
                      
}
      catch (Exception ex) {} ;     
     
  

        %>
        
    </body>
</html>
