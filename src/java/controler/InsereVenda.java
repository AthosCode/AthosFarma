/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.VendaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Venda;

/**
 *
 * @author VIVO
 */
@WebServlet(name = "InsereVenda", urlPatterns = {"/InsereVenda"})
public class InsereVenda extends HttpServlet {

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
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/BuscarProduto.jsp");
        rd.forward(request, response);
        
        String descricaoProduto = request.getParameter("descricaoProduto");
        
        String valorUnitario = request.getParameter("valorUnitario");
        double doublevalorUnitario = Double.parseDouble(valorUnitario);
        
        String quantidade = request.getParameter("quantidade");
        Integer intQuantidade = Integer.parseInt(quantidade);  
        
        double total = (doublevalorUnitario * intQuantidade);
        
        Venda venda = new Venda();
        venda.setDescricaoProduto(descricaoProduto);
        venda.setValorUnitario(doublevalorUnitario);
        venda.setQuantidade(intQuantidade);
        venda.setTotal(total);
        VendaDao dao = new  VendaDao();
        dao.inserir(venda);
         
        
        response.sendRedirect("/WEB-INF/jsp/BuscarProduto"); 
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
        processRequest(request, response);
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
