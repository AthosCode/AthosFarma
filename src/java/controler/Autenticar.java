/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.FuncionarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Funcionario;

/**
 *
 * @author VIVO
 */
 @WebServlet (name="Autenticar", urlPatterns = {"/Autenticar"})
public class Autenticar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
       @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
        rd.forward(request, response);
         
        }
     
     
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        Funcionario funcionario = new Funcionario();
        funcionario.setUsuario(login);
        funcionario.setSenha(senha);
        RequestDispatcher rd = null;
        FuncionarioDao dao = new FuncionarioDao();
        
        if (dao.AutenticaUsuario(funcionario)&& (!login.isEmpty()) && (!senha.isEmpty())){
            HttpSession sessao = request.getSession();
            sessao.setAttribute("sessaoUsuario",login);
            request.getRequestDispatcher("Home").forward(request, response);
        }else {
              request.setAttribute("mensagem", "Usuario ou senha invalidos");
              request.getRequestDispatcher("Autenticar").forward(request, response);
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
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        Funcionario funcionario = new Funcionario();
        funcionario.setUsuario(login);
        funcionario.setSenha(senha);
        RequestDispatcher rd = null;
        FuncionarioDao dao = new FuncionarioDao();
        
        if (dao.AutenticaUsuario(funcionario)){
            HttpSession sessao = request.getSession();
            sessao.setAttribute("sessaoUsuario",login);
            response.sendRedirect("Home");
           //" request.getRequestDispatcher("Home").forward(request, response);
        }else {
              request.setAttribute("mensagem", "Usuario e senha Errados");
              request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp").forward(request, response);
        }
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
