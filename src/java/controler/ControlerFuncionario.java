/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.FuncionarioDao;
import java.io.IOException;
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
 @WebServlet (name = "CadastroFuncionario", urlPatterns = {"/CadastroFuncionario"})
public class ControlerFuncionario extends HttpServlet {

    @Override
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/CadastrarFuncionario.jsp");
        rd.forward(request, response);
        }
    
         protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             
        String nome = request.getParameter("tnome");
        String sobrenome = request.getParameter("tsobrenome");
        Funcionario funcionario = new Funcionario();
        funcionario.setNome(nome);
        funcionario.setSobrenome(sobrenome);
        FuncionarioDao funcionarioDao = new FuncionarioDao();
        funcionarioDao.inserir(funcionario);
        response.sendRedirect("CadastroFuncionario"); 
    }
 }
