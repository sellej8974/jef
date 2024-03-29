package main.java.propertea.database.finance;


import main.java.propertea.database.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

abstract class FinancialDAO extends DAO {

    protected String password = "ProperTea";
    protected String username = "jef";
    protected String host = "10.8.1.7";
    protected String database = "financialDB";
    protected String port = "3306";

    protected Connection connection = loadConnection();

    protected Connection loadConnection(){
        try{
            return DriverManager.getConnection("jdbc:mysql://" + host + "/" + database, username, password);
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }

}
