/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author juanm
 */
public class Users {
    private static int number = 0;
    private int id;
    private String username;
    private String password;
    private String email;

    public Users () {
        this.id = number;
        number++;
    }

    public Users (String username, String password, String email) {
        this.id = number;
        this.username = username;
        this.password = password;
        this.email = email;
        number++;
    }

    public void setUsername (String username) {
        this.username = username;
    }

    public void setPassword (String password) {
        this.password = password;
    }

    public void setEmail (String email) {
        this.email = email;
    }

    public String getUsername () {
        return username;
    }

    public String getPassword () {
        return password;
    }

    public String getEmail () {
        return email;
    }
}

