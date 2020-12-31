<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout Apprenant </title>
    </head>
    <body>
          <A href="/MiniProjet/menuu" >Page d’acceuil</A> 
        <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
          
                   
    <c:if test="${ !empty param.Nom }">
          
    <sql:update dataSource = "${result}" var = "result">
   INSERT INTO apprenant (idAprenant,nom, email) VALUES ('<%= request.getParameter("Identifiant")%>','<%= request.getParameter("Nom")%>', '<%= request.getParameter("Email")%>') 
    </sql:update>
     
    </c:if>
    <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>

     <c:if test="${ !empty param.formations }"> 
    <sql:update dataSource = "${result}" var = "result">
           INSERT INTO apprenant_has_formation (Apprenant_idAprenant, Formation_idFormation) 
           SELECT apprenant.idAprenant,formation.idFormation FROM apprenant, formation WHERE apprenant.nom='<%= request.getParameter("Nom")%>' AND formation.nom='<%= request.getParameter("formations")%>' 
       </sql:update>
     </c:if>
   
    <c:if test="${ !empty param.Nom }">         
 
      
       <p> <c:out value="Vous venez d'enregistrer un Apprenant" /> </p> </div>
  
         </c:if> 
    </body>
</html>
