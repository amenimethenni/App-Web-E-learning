<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout Formateur </title>
    </head>
    <body>
          <A href="/MiniProjet/menuu" >Page d’acceuil</A> 
          <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
          
                   
    <c:if test="${ !empty param.Nom }">
          
    <sql:update dataSource = "${result}" var = "result">
   INSERT INTO formateur (idFormateur,nom, email, anciennete, domaine_expertise) VALUES (7,'<%= request.getParameter("Nom")%>', '<%= request.getParameter("Email")%>', <%= request.getParameter("anc")%>, '<%= request.getParameter("domaine")%>') 
    </sql:update>
     
  </c:if>

      <sql:setDataSource var = "result" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/elearning?zeroDateTimeBehavior=convertToNull"
         user = "root"  password = "amani"/>
          
   <c:if test="${ !empty param.formations }"> 
    <sql:update dataSource = "${result}" var = "result">
           INSERT INTO formateurformation (Formateur_idFormateur, Formation_idFormation) 
           SELECT formateur.idFormateur,formation.idFormation FROM formateur, formation 
           WHERE formateur.nom='<%= request.getParameter("Nom")%>' 
           AND formation.nom='<%= request.getParameter("formations")%>' 
       </sql:update>
   </c:if> 
       <c:if test="${ !empty param.Nom }"> 
       <p> <c:out value="Vous venez d'enregistrer un Formateur" /> </p> 
       </c:if> 
      
           
 
    </body>
    
</html>
