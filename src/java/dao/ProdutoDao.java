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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Produto;
import util.Conexao;

/**
 *
 * @author VIVO
 */
public class ProdutoDao {

    Connection connection;

    public ProdutoDao() {
        connection = Conexao.getConexao();
    }

    public void inserir(Produto produto) {
        try {
            String SQL = "INSERT INTO produtos (nome_produto,valor_produto) VALUES (?,?)";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setString(1, produto.getNome_produto());
            ps.setDouble(2, produto.getValor_produto());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro no cadastro", ex);
        }
    }
    
     public List<Produto> Listar() {
        List<Produto> produtos = new ArrayList<Produto>();

        try {
            String SQL = "SELECT * FROM produtos";

            PreparedStatement ps = connection.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setValor_produto(rs.getDouble("valor_produto"));
                produtos.add(produto);
                
            }
            return produtos;
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar JDBC", ex);
        }
    }
     
     
     public  List ListarSearch(String search) {
       
        try {
            
         Produto produto = new Produto();
         List<Produto> produtos = new ArrayList<Produto>();
            String SQL = "SELECT * FROM produtos WHERE nome_produto = ?";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setString(1, search);
            ResultSet rs = ps.executeQuery();

            rs.next();
            produto.setId(rs.getInt("id_produto"));
            produto.setNome_produto(rs.getString("nome_produto"));
            produto.setValor_produto(rs.getDouble("valor_produto"));

            return produtos;
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar JDBC", ex);
        }
    }
     
     public void remover(int id) {

        try {

            String SQL = "DELETE FROM produtos WHERE id_produto= ?";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro na exclusao", ex);

        }
    }
}
