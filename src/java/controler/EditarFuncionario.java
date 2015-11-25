/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.FuncionarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Funcionario;

/**
 *
 * @author VIVO
 */
public class EditarFuncionario extends HttpServlet {

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
        
         String id = request.getParameter("tid");
         int i = Integer.parseInt(id);
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
        funcionario.setId(i);
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
        funcionarioDao.editar(funcionario);
        response.sendRedirect("ListaFuncionarios"); 
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
