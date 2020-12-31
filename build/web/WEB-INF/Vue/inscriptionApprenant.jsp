<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription des apprenants</title>
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
            
        </style>
    </head>
    <body style="background-color:infobackground">
     
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
             <center><h1><u>Inscription Apprenant</u></h1></center> 
             <br> </br>
      
 
     
   
               
     
    <form action="/MiniProjet/ajouterApprenant" method="post">
       
    <center>
        <div> 
             
  <table>
       
<tr>
<td>Identifiant </td>
<td><input type="text" class="form-control" name="Identifiant" placeholder="identifiant"></td>
</tr>

<tr>
<td>Nom et Prenom </td>
<td><input type="text" class="form-control" name="Nom" placeholder="nom et prenom"></td>
</tr>
<tr>
<td>Adresse E-mail </td>
<td><input type="text" class="form-control" name="Email" placeholder="Adresse E-mail"></td>
</tr>
<tr>
    <td><h4><b><center><p style="color:DodgerBlue;">liste des formations : </center></b></h4></td>   
<tr>
<td>
Formation à etudier:
<SELECT name="formations" size="1">

<OPTION selected value="informatique">INFORMATIQUE
<OPTION value="mathematiques">MATHEMATIQUES  
 <OPTION value="sport">SPORT

    
</SELECT>
</td>
</tr>


  <p>  </p>
  <p>  </p>
  <tr>    
<td colspan="2" style="text-align: center">
<input class="btn btn-success" type="submit" value="S'inscrire"></td> 
<td colspan="2" style="text-align: center">
 <input class="btn btn-success" type="reset" value=" Reset "></td>  
</tr>
    <p>    </p>
    <p>    </p>
</table>
</div>
</center>
    </form>         
             
             
            
             
 </body>
</html>
