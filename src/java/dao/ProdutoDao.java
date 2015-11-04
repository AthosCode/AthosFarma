/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Funcionario;
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
}
