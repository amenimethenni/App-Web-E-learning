<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>listeformations</title>
              <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
              
           <style>
            td{
                padding: 10px;
            }
            div{
                width: 50%;
                border: 1px solid  black;
                border-radius: 5px;
                background-color: #FFDAB9;
            }
            
        </style>

    </head>
    <body style="background-color:infobackground">
           <A href="/MiniProjet/menuu" >Page d’acceuil</A> 
           <br> </br>
        <h3>welcome ${identifiant}</h3>
     
       
          <form action="/MiniProjet/Logout" method="post">   
      
              <input type="submit" value="Logout">

</form>
       <br> </br>
 

    <center><h1 style="color:rgba(255,0,0,0.5);">LISTE DES FORMATIONS</h1></center>
    <p>    </p>
        <p>    </p>
            <p>    </p>
                <p>    </p>
                    <p>    </p>
                          
                    
          <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
            
          
          
          
          

        <c:if test="${ empty Nom }">
         <sql:query dataSource = "${result}" var = "result">
              SELECT * FROM formation
          </sql:query>
              </c:if>

              <center> <table width=50% border=2> </center>
                   <thead> 
            <tr> <th>Nom</th> 
                <th>Duree</th> 
             
                <th>Description</th> 
                <th>Nombre Des Modules</th> 
            </tr>
                   </thead> 
                   <tbody>
            <!-- column data --> 
            <c:forEach var="row" items="${result.rows}"> 
                <tr>
                    <td> <a href="/MiniProjet//listemodules">${row.nom}</a></td>
                    <td>${row.duree}</td> 
                  
                    <td>${row.description}</td>
                     <td>${row.nbmodules}</td>
                </tr>
            </c:forEach>
    
    
    </body>
</html>
