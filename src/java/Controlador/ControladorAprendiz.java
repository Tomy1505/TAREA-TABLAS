/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Model.Aprendiz;
import ModelDao.AprendizDao;
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
@WebServlet(name = "ControladorAprendiz", urlPatterns = {"/ControladorAprendiz"})
public class ControladorAprendiz extends HttpServlet {
    
    String agregar="view/FAprendiz.jsp";
    String editar="view/EAprendiz.jsp";
    String listar="view/LAprendiz.jsp";
    
    Aprendiz ape = new Aprendiz();
    AprendizDao adao = new AprendizDao();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorAprendiz</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorAprendiz at " + request.getContextPath() + "</h1>");
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
            int documentoa=Integer.parseInt(request.getParameter("doc"));
            String nombrea=request.getParameter("nom");
            String apellidoa=request.getParameter("ape");
            String emaila=request.getParameter("ema");
            int telefonoa=Integer.parseInt(request.getParameter("num"));
            
            ape.setDoca(documentoa);
            ape.setNoma(nombrea);
            ape.setApea(apellidoa);
            ape.setEmaa(emaila);
            ape.setTela(telefonoa);           
            adao.registrarap(ape);
            acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            ape.setId(id);
            adao.eliminarap(id);
            acceso=listar;
        }
        
        RequestDispatcher view=request.getRequestDispatcher(acceso);
        view.forward(request,response);
    }

    
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
