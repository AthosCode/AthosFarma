/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.FuncionarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Funcionario;

/**
 *
 * @author VIVO
 */


    @WebServlet (name = "ListaFuncionarios", urlPatterns = {"/ListaFuncionarios"})
   
    public class ListarFuncionarios extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        FuncionarioDao dao = new FuncionarioDao();
       List<Funcionario> funcionarios = dao.Listar();
       request.setAttribute("listafuncionarios", funcionarios);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/ListaFuncionario2.jsp");
        rd.forward(request, response);      
        
        }
    }

