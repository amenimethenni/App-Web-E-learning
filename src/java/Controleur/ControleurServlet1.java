/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controleur;


import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 *
 * @author dell
 */
@WebServlet(name = "ControleurServlet1", loadOnStartup = 1,urlPatterns = {"/rechercherFormation", "/AfficherResultatRecherche", "/ajouterFormation"
,"/menu","/identification","/inscriApprenant","/AfficherResultatRecherche","/ajouterFormation","/ajouterFormateur",
"/ajouterApprenant","/listeformations","/listemodules","/login","/programation","/algebre","/football","/introductionhtml","/erreur","/Logout"})
public class ControleurServlet1 extends HttpServlet {
    
   
  

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              response.setContentType("text/html;charset=UTF-8");
           
             
        try (PrintWriter out = response.getWriter()) {
                
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        
    }
              }
              

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String userPath = request.getServletPath(); //permet de recevoir la requête client
      if (userPath.equals("/rechercherFormation"))
      {
          userPath ="/WEB-INF/Vue/inscriptionFormateur.jsp";
      }
      else if (userPath.equals("/menuu"))
      {
          userPath ="/WEB-INF/index.jsp";
      }
          else if (userPath.equals("/AfficherResultatRecherche"))
      {
          userPath ="/WEB-INF/Vue/resultatRechercheFormation.jsp";
      }
          else if (userPath.equals("/inscriApprenant"))
      {
          userPath ="/WEB-INF/Vue/inscriptionApprenant.jsp";
      }
            else if (userPath.equals("/identification"))
      {
          userPath ="/WEB-INF/Vue/identification.jsp";
      }
            else if (userPath.equals("/listeformations"))
            {
                       userPath ="/WEB-INF/Vue/listeformations.jsp";
            }
           else if (userPath.equals("/listemodules"))
            {
                       userPath ="/WEB-INF/Vue/listeModules.jsp";
            }
       else if (userPath.equals("/programation"))
            {
                       userPath ="/WEB-INF/Vue/programation.jsp";
            }
        else if (userPath.equals("/algebre"))
            {
                       userPath ="/WEB-INF/Vue/algebre.jsp";
            }
        else if (userPath.equals("/football"))
            {
                       userPath ="/WEB-INF/Vue/football.jsp";
            }
        else if(userPath.equals("/introductionhtml"))
        {
          userPath ="/WEB-INF/Vue/introductionhtml.jsp";
        }
      else if(userPath.equals("/erreur"))
        {
          userPath ="/WEB-INF/Vue/erreur.jsp";
        }
         
       
                
             
         
      String url = userPath;
      try { request.getRequestDispatcher(url).forward(request, response);
      
      } catch (Exception ex) { ex.printStackTrace(); }

     
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userPath = request.getServletPath(); //permet de recevoir la requête client
      if (userPath.equals("/ajouterFormateur"))
      {
          userPath ="/WEB-INF/Vue/AjoutFormateur.jsp";
      }
      else if (userPath.equals("/ajouterApprenant"))
      {
          userPath ="/WEB-INF/Vue/AjoutApprenant.jsp";
      }
            else if (userPath.equals("/login"))
      {
          userPath ="/WEB-INF/Vue/login.jsp";
      }
        else if(userPath.equals("/Logout"))
        {
          userPath ="/WEB-INF/Vue/identification.jsp";
        }
       

       String url = userPath;
      try { request.getRequestDispatcher(url).forward(request, response);
      
      } catch (Exception ex) { ex.printStackTrace(); }
    

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
