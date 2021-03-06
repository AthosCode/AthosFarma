/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.FuncionarioDao;
import dao.ProdutoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Funcionario;
import modelo.Produto;

/**
 *
 * @author VIVO
 */

 @WebServlet (name="CadastarProduto", urlPatterns = {"/CadastrarProduto"})
public class CadastroProduto extends HttpServlet {
     
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/CadastrarProduto.jsp");
        rd.forward(request, response);
        
        String nomeProduto = request.getParameter("tnomeProduto");
        String valorProduto = request.getParameter("tvalorUnitario");
        double doubleProduto = Double.parseDouble(valorProduto);  
        String quantidade = request.getParameter("quantidade");
        int quantidadeProduto = Integer.parseInt(quantidade);
        
        Produto produto = new Produto();
        produto.setNome_produto(nomeProduto);
        produto.setValor_produto(doubleProduto);
        produto.setQuantidade(quantidadeProduto);
        
       
        ProdutoDao dao = new ProdutoDao();
        dao.inserir(produto);
         
        
        response.sendRedirect("/WEB-INF/jsp/CadastrarProduto"); 
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
