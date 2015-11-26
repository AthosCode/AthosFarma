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
import modelo.Produto;
import modelo.Venda;
import util.Conexao;

/**
 *
 * @author VIVO
 */
public class VendaDao {
    
    Connection connection;
    
    public VendaDao() {
        connection = Conexao.getConexao();
    }
    
    public void inserir(Venda venda) {
        try {
            String SQL = "INSERT INTO vendas (descricaoProduto,valorUnitario,quantidade,total) VALUES (?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setString(1, venda.getDescricaoProduto());
            ps.setDouble(2,venda.getValorUnitario());
            ps.setInt(3,venda.getQuantidade());
            ps.setDouble(4, venda.getTotal());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro no cadastro da venda", ex);
        }
    }
    
}
