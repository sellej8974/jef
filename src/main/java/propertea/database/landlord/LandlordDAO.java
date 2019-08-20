package main.java.propertea.database.landlord;

import main.java.propertea.database.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

abstract class LandlordDAO extends DAO {

    protected String password = "jakerifos2019";
    protected String username = "jef";
    protected String host = "localhost";
    protected String database = "landlordDB";
    protected String port = "3306";

    protected Connection connection = loadConnection();

    protected Connection loadConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + database, username, password);
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }

}