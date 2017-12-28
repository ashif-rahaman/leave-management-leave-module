/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db.util;

import db.core.ConnectToDatabase;
import java.sql.ResultSet;

/**
 *
 * @author ashif
 */
public class DBExecutor {

    private final ConnectToDatabase connection;

    public DBExecutor() {

        this.connection = new ConnectToDatabase();
    }

    public ResultSet execute(String sql) {

        ResultSet resultSet = connection.getResult(sql);

        connection.closeConnection();

        return resultSet;
    }
}
