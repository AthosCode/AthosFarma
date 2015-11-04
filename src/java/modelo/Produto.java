/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author VIVO
 */
public class Produto {
    
    Integer id;
    String nome_produto;
    double valor_produto;

    public Produto() {
    }

    public Produto(Integer id, String nome_produto, double valor_produto) {
        this.id = id;
        this.nome_produto = nome_produto;
        this.valor_produto = valor_produto;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome_produto() {
        return nome_produto;
    }

    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    public double getValor_produto() {
        return valor_produto;
    }

    public void setValor_produto(double valor_produto) {
        this.valor_produto = valor_produto;
    }
    
    
}
