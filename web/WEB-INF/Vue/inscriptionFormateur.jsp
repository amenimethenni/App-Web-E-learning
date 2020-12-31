<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%-- 
    Document   : inscriptionFormateur
    Created on : 25 févr. 2019, 18:41:42
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription des formateurs</title>
         <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <style>
            td{
                padding: 10px;
            }
            div{
                width: 50%;
                border: 1px solid  black;
                border-radius: 5px;
                background-color:#FFE4E1;
            }
            
        </style>

    </head>
    <body style="background-color:#FEFEE0">
         
 <A href="/MiniProjet/menuu" >Page d’acceuil</A>

|<A href="/MiniProjet/identification" >S'identifier</A> </td> 

                        
        <form action="/MiniProjet/AfficherResultatRecherche" type="Post"> 
            <table>
                <tr> 
                 
                    <td><font size=10><input type=text class="form-control" name="formation" placeholder="Chercher"></td> 
                    <td><input type=submit size=25 value=Search></td>
                </tr> 
            </table>
 </form>  
  
        

        
<center><h1><u>Inscription Formateur</u></h1></center>
      
<br> </br>
   
       
 <form action="/MiniProjet/ajouterFormateur" method="post">
    <center>
        <div> 
       
 <table> 
<tr>
<tr>
<td>Nom/Prenom </td>
<td><input type="text" class="form-control" name="Nom" placeholder="Nom/Prenom"></td>
</tr>
<tr>
<td>Adresse E-mail </td>
<td><input type="text" class="form-control" name="Email" placeholder="Adresse E-mail"></td>
</tr>
<tr>
<td>Domaine d'expertise</td>
<td><input type="text" class="form-control" name="domaine" placeholder="Domaine d'expertise"></td>
</tr>
<tr>
<td>Ancienneté</td>
<td><input type="text" class="form-control" name="anc" placeholder="Ancienneté"></td>
</tr>
 

</table>
            
 <p>    </p>
  <p>    </p>
        
    
Formation à proposer:
<SELECT name="formations" size="1">

<OPTION selected value="informatique">INFORMATIQUE
<OPTION value="mathematique">MATHÉMATIQUES 
<OPTION value="sport">SPORT

</SELECT>
</table>

            <p>    </p>
  <p>    </p>
  
  
  <p>  </p>
  <p>  </p>
  <tr>    
<td colspan="2" style="text-align: center">
<input class="btn btn-success" type="submit" value="S'inscrire"></td> 
<td colspan="2" style="text-align: center">
 <input class="btn btn-success" type="reset" value=" Clear "></td>  
</tr>
    <p>    </p>
    <p>    </p>
    </center>
</div>
  
 </form>
        
       
              
 </body>
 
</html>
