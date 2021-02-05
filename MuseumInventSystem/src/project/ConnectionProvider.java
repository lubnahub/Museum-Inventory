/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

/**
 *
 * @author Lubnaa, Shefali 
 */
public class ConnectionProvider {
    
    public static void main(String[] args){
        String pathToConnector="com.mysql.cj.jdbc.Driver";
        try {
            Class.forName(pathToConnector);
            System.out.println("Connector was loaded succesfully");
        } catch (ClassNotFoundException ex) {
           System.out.println("Connector was not loaded succesfully");
          System.out.println(ex.getMessage());
                   
        }
        
    }
}
