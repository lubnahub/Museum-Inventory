/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package museuminventsystem;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pooja
 */
public class MuseumInventSystem {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        String className = "com.mysql.jdbc.Driver";
        try {
            Class.forName(className);
            System.out.println("Driver loaded successfully!");
        } catch (ClassNotFoundException ex) {
            
            System.out.println("Driver failed to load successfully!");
            System.out.println(ex.getMessage());
        }
    }
    
}
