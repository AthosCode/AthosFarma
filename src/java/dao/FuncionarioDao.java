/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Funcionario;
import util.Conexao;

/**
 *
 * @author VIVO
 */
public class FuncionarioDao {

    Connection connection;

    
    public FuncionarioDao() {

        connection = Conexao.getConexao();
    }
    
  

    public void inserir(Funcionario funcionario) {
        try {
           String SQL = "INSERT INTO funcionario "
                    + "(nome,sobrenome,cpf,rg,datanascimento,endereco,cidade,estado,cep,funcao,salario,"
                   + "filial,usuario,senha) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
           
            PreparedStatement ps = connection.prepareStatement(SQL);
            
            ps.setString(1, funcionario.getNome());
            ps.setString(2, funcionario.getSobrenome());
            ps.setString(3, funcionario.getCPF());
            ps.setString(4, funcionario.getRG());
            ps.setDate(5,new java.sql.Date(funcionario.getDataNascimento().getTime()));
            ps.setString(6,funcionario.getEndereco() );
            ps.setString(7, funcionario.getCidade());
            ps.setString(8,funcionario.getEstado() );
            ps.setString(9,funcionario.getCEP());
            ps.setString(10,funcionario.getFuncao());
            ps.setDouble(11,funcionario.getSalario());
            ps.setString(12,funcionario.getFilial());
            ps.setString(13,funcionario.getUsuario());
            ps.setString(14,funcionario.getSenha());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void remover(int id) {

        try {

            String SQL = "DELETE FROM funcionario WHERE id= ?";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro na exclusao", ex);

        }
    }

    public List<Funcionario> Listar() {
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();

        try {
            String SQL = "SELECT * FROM funcionario";

            PreparedStatement ps = connection.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Funcionario funcionario = new Funcionario();
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSobrenome(rs.getString("sobrenome"));
                funcionario.setCPF(rs.getString("CPF"));
                funcionario.setRG(rs.getString("RG"));
                funcionario.setDataNascimento(rs.getDate("datanascimento"));
                funcionario.setEndereco(rs.getString("endereco"));
                funcionario.setCidade(rs.getString("cidade"));
                funcionario.setEstado(rs.getString("estado"));
                funcionario.setFuncao(rs.getString("estado"));
                funcionario.setSalario(rs.getDouble("salario"));
                funcionario.setFilial(rs.getString("filial"));
                funcionario.setUsuario(rs.getString("usuario"));
                funcionario.setSenha(rs.getString("senha"));
                funcionarios.add(funcionario);
            }
            return funcionarios;
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar JDBC", ex);
        }
    }

    public Funcionario buscar(int id) {

        try {

            Funcionario funcionario = new Funcionario();
            String SQL = "SELECT * FROM funcionario WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            rs.next();
            funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSobrenome(rs.getString("sobrenome"));
                funcionario.setCPF(rs.getString("CPF"));
                funcionario.setRG(rs.getString("RG"));
                funcionario.setDataNascimento(rs.getDate("datanascimento"));
                funcionario.setEndereco(rs.getString("endereco"));
                funcionario.setCidade(rs.getString("cidade"));
                funcionario.setEstado(rs.getString("estado"));
                funcionario.setFuncao(rs.getString("cep"));
                funcionario.setFuncao(rs.getString("funcao"));
                funcionario.setSalario(rs.getDouble("salario"));
                funcionario.setFilial(rs.getString("filial"));
                funcionario.setUsuario(rs.getString("usuario"));
                funcionario.setSenha(rs.getString("senha"));

            return funcionario;
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao buscar", ex);
        }

    }

    public void editar(Funcionario funcionario) {

        try {
            String SQL = "UPDATE funcionario SET nome=?, sobrenome=?,CPF=?,RG=?,"
                    + "datanascimento=?,endereco=?,cidade=?,estado=?,cep=?,funcao=?,"
                    + "salario=?,filial=?,usuario=?,senha=? WHERE id=?";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setInt(15, funcionario.getId());
             ps.setString(1, funcionario.getNome());
            ps.setString(2, funcionario.getSobrenome());
            ps.setString(3, funcionario.getCPF());
            ps.setString(4, funcionario.getRG());
            ps.setDate(5,new java.sql.Date(funcionario.getDataNascimento().getTime()));
            ps.setString(6,funcionario.getEndereco() );
            ps.setString(7, funcionario.getCidade());
            ps.setString(8,funcionario.getEstado() );
            ps.setString(9,funcionario.getCEP());
            ps.setString(10,funcionario.getFuncao());
            ps.setDouble(11,funcionario.getSalario());
            ps.setString(12,funcionario.getFilial());
            ps.setString(13,funcionario.getUsuario());
            ps.setString(14,funcionario.getSenha());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao atualizar JDBC", ex);
        }
    }
    
    
    public boolean AutenticaUsuario (Funcionario funcionario){
        String SQL = "SELECT * FROM funcionario WHERE usuario=? and senha=?";
       
        try {
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setString(1,funcionario.getUsuario());
            ps.setString(2,funcionario.getSenha());
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha autenticaçao JDBC", ex);
        }
       return false; 
    }
}
