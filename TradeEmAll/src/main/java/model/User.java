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
public class User {
    private static int number = 0;
    private int id;
    private String username;
    private String password;
    private String email;
    private String profile_picture;

    public User () {
        this.id = number;
        number++;
    }

    public User (String username, String password, String email, String profile_picture) {
        this.id = number;
        this.username = username;
        this.password = password;
        this.email = email;
        this.profile_picture = profile_picture;
        number++;
    }

    public String getUsername () {
        return username;
    }
    
    public void setUsername (String username) {
        this.username = username;
    }

    public String getPassword () {
        return password;
    }

    public void setPassword (String password) {
        this.password = password;
    }

    public String getEmail () {
        return email;
    }
    
    public void setEmail (String email) {
        this.email = email;
    }
    
    public String getProfilePicture () {
        return profile_picture;
    }
    
    public void setProfilePicture (String profile_picture) {
        this.profile_picture = profile_picture;
    }
}
