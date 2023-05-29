/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.Ficha;
import ModelDao.FichaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ControladorFicha", urlPatterns = {"/ControladorFicha"})
public class ControladorFicha extends HttpServlet {
    String agregar="view/FFicha.jsp";
    String editar="view/EFicha.jsp";
    String listar="view/LFicha.jsp";
    
    Ficha fic = new Ficha();
    FichaDao fdao = new FichaDao();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorFicha</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorFicha at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        if(action.equalsIgnoreCase("agregar")){
            acceso=agregar;
        }
        if(action.equalsIgnoreCase("Registrar")){
            int codfi=Integer.parseInt(request.getParameter("codfi"));
            int cantap=Integer.parseInt(request.getParameter("cantapr"));
            int nompro=Integer.parseInt(request.getParameter("listapro"));
            int nomapr=Integer.parseInt(request.getParameter("listaape"));
                
            fic.setCodficha(codfi);
            fic.setCantaprendices(cantap);
            fic.setCodpro(nompro);
            fic.setCodapr(nomapr);           
            fdao.registrarficha(fic);
            acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            fic.setCodficha(id);
            fdao.eliminarficha(id);
            acceso=listar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id",request.getParameter("id"));
            acceso=editar;
            
        }else if(action.equalsIgnoreCase("Actualizar")){
            int codfi=Integer.parseInt(request.getParameter("codf"));
            int cantap=Integer.parseInt(request.getParameter("canta"));
            int nompro=Integer.parseInt(request.getParameter("codp"));
            int nomapr=Integer.parseInt(request.getParameter("coda"));            
            fic.setCodficha(codfi);
            fic.setCantaprendices(cantap);
            fic.setCodpro(nompro);
            fic.setCodapr(nomapr);   
            acceso=listar;
        }
        RequestDispatcher view=request.getRequestDispatcher(acceso);
        view.forward(request,response);
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
        processRequest(request, response);
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
