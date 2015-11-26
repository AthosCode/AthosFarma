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
public class Venda {
    
String nomeVendedor;
String filialVendedor;
String descricaoProduto;
double valorUnitario ;
Integer quantidade;
double total;

    public Venda() {
    }

    public Venda(String nomeVendedor, String filialVendedor, String descricaoProduto, double valorUnitario, Integer quantidade, double total) {
        this.nomeVendedor = nomeVendedor;
        this.filialVendedor = filialVendedor;
        this.descricaoProduto = descricaoProduto;
        this.valorUnitario = valorUnitario;
        this.quantidade = quantidade;
        this.total = total;
    }

    public String getNomeVendedor() {
        return nomeVendedor;
    }

    public void setNomeVendedor(String nomeVendedor) {
        this.nomeVendedor = nomeVendedor;
    }

    public String getFilialVendedor() {
        return filialVendedor;
    }

    public void setFilialVendedor(String filialVendedor) {
        this.filialVendedor = filialVendedor;
    }

    public String getDescricaoProduto() {
        return descricaoProduto;
    }

    public void setDescricaoProduto(String descricaoProduto) {
        this.descricaoProduto = descricaoProduto;
    }

    public double getValorUnitario() {
        return valorUnitario;
    }

    public void setValorUnitario(double valorUnitario) {
        this.valorUnitario = valorUnitario;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    
}