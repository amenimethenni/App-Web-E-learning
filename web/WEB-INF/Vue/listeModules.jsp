<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>liste des modules</title>
    </head>
     <body style="background-color:infobackground">
         
         <A href="/MiniProjet/menuu" >Page d’acceuil</A> 

    <center><h1 style="color:rgba(255,0,0,0.5);">LISTE DES MODULES DES FORMATIONS</h1></center>
       <p align="center"><img border="0" src="10.jpg" width="600" height="250"></p> 
    <p>    </p>
        <p>    </p>
            <p>    </p>
                <p>    </p>
                    <p>    </p>
          <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
          <p>1)informatique</p>

        <c:if test="${ empty Nom }">
            
         <sql:query dataSource = "${result}" var = "result">
             
              SELECT * FROM module where Formation_idFormation=650
         </sql:query>
        </c:if>
      
     
            <!-- column data --> 
            <c:forEach var="row" items="${result.rows}"> 
            <ul>
            <li> <a href="/MiniProjet//programation">${row.nom}</a></td>
            </ul>       
                </tr>
            </c:forEach>
                
                   <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
                
               <p>2)mathematique</p>
                <c:if test="${ empty Nom }">
            
         <sql:query dataSource = "${result}" var = "result">
             
              SELECT * FROM module where Formation_idFormation=54
         </sql:query>
        </c:if>
      
     
            <!-- column data --> 
            <c:forEach var="row" items="${result.rows}"> 
            <ul>
            <li> <a href="/MiniProjet//algebre">${row.nom}</a></td>
            </ul>       
                </tr>
            </c:forEach>
                
                  <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
                
               <p>3)sport</p>
                <c:if test="${ empty Nom }">
            
         <sql:query dataSource = "${result}" var = "result">
             
              SELECT * FROM module where Formation_idFormation=66
         </sql:query>
        </c:if>
      
     
            <!-- column data --> 
            <c:forEach var="row" items="${result.rows}"> 
            <ul>
            <li> <a href="/MiniProjet//football">${row.nom}</a></td>
            </ul>       
                </tr>
            </c:forEach>
                 <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
                
               <p>4)apprende à coder</p>
                <c:if test="${ empty Nom }">
            
         <sql:query dataSource = "${result}" var = "result">
             
              SELECT * FROM module where Formation_idFormation=1
         </sql:query>
        </c:if>
      
     
            <!-- column data --> 
            <c:forEach var="row" items="${result.rows}"> 
            <ul>
            <li> <a href="/MiniProjet//introductionhtml">${row.nom}</a></td>
            </ul>       
                </tr>
            </c:forEach>
    
    

    </body>
</html>
