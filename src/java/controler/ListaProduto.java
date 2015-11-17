/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.ProdutoDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Produto;

/**
 *
 * @author VIVO
 */
@WebServlet (name="ListaProduto", urlPatterns = {"/ListaProduto"})
public class ListaProduto extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProdutoDao daoProduto = new ProdutoDao();
        List<Produto> produtos = daoProduto.Listar();
        request.setAttribute("produtos", produtos);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/ListaMedicamentos.jsp");
        rd.forward(request, response);
    }
  }
