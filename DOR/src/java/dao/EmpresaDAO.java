/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexao.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import modelos.Empresa;

/**
 *
 * @author joaolopes
 */
public class EmpresaDAO {
    
    public void cadastra(Empresa empresa){
        String sql = "insert into empresa (razao_social , cnpj) values (? , ?);";
        try (Connection con = new ConnectionFactory().getConnection()){
            con.setAutoCommit(false);
            try (PreparedStatement stmt = con.prepareStatement(sql)){
                stmt.setString(1, empresa.getRazaoSocial());
                stmt.setString(2, empresa.getCnpj());
                stmt.execute();
                con.commit();
            } catch (Exception e) {
                con.rollback();
                e.printStackTrace();
                throw new RuntimeException();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
    }
    
}
