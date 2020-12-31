<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% String champtexte=request.getParameter("formation"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
              <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
              
        

    </head>
    <body>
         <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
      <div id="divisiondroite"> 
          
         <sql:query dataSource = "${result}" var = "result">
              SELECT * FROM formation WHERE discipline='<%=champtexte%>' 
          </sql:query> </div>
          
  
    <center><h1 style="color:rgba(255,0,0,0.5);">LISTE DES FORMATIONS</h1></center>
          <p>    </p>
        <p>    </p>
        <p>    </p>
 
 <table border="1" align="center"> <!-- column headers --> 
     <tr> <c:forEach var="columnName" items="${result.columnNames}"> 
         <th><c:out value="${columnName}"/></th> 
     </c:forEach>
     </tr> <!-- column data --> <c:forEach var="row" items="${result.rowsByIndex}"> <tr> 
         <c:forEach var="column" items="${row}"> <td><c:out value="${column}"/></td> </c:forEach> </tr> 
     </c:forEach>
    </table>
    </body>
</html>
