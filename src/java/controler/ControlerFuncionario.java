/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.FuncionarioDao;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
             
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String dtNascimentoStr = request.getParameter("dtnascimento");
        String endereco = request.getParameter("endereco");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        String cep = request.getParameter("cep");
        String funcao = request.getParameter("funcao");
        String filial = request.getParameter("filial");
        String salario = request.getParameter("salario");
        double doubleSalario = Double.parseDouble(salario); 
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        
    SimpleDateFormat formatadorData = new SimpleDateFormat("dd/MM/yyyy");
    Date dtNascimento = null;
    try {
      dtNascimento =  formatadorData.parse(dtNascimentoStr);
      
    } catch (ParseException ex) {
    
    }
       
    
    
        Funcionario funcionario = new Funcionario();
        funcionario.setNome(nome);
        funcionario.setSobrenome(sobrenome);
        funcionario.setCPF(cpf);
        funcionario.setRG(rg);
        funcionario.setDataNascimento(dtNascimento);
        funcionario.setEndereco(endereco);
        funcionario.setCidade(cidade);
        funcionario.setEstado(estado);
        funcionario.setCEP(cep);
        funcionario.setFuncao(funcao);
        funcionario.setSalario(doubleSalario);
        funcionario.setFilial(filial);
        funcionario.setUsuario(usuario);
        funcionario.setSenha(senha);
        
        FuncionarioDao funcionarioDao = new FuncionarioDao();
        funcionarioDao.inserir(funcionario);
        response.sendRedirect("CadastroFuncionario"); 
    }
 }
