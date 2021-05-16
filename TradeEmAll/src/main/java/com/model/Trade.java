
package com.model;

import java.io.*;

/**
 *
 * @author gonza
 */

public class Trade implements java.io.Serializable {
    private int trade_id;
    private boolean active;
    private int give_user_id;
    private int receive_user_id;
    private String give_username;
    private String receive_username;
    private String give_review;
    private String receive_review;
    private int give_review_stars;
    private int receive_review_stars;
    private Pokemon give_pkm;
    private Pokemon receive_pkm;
    
    public Trade() {
        this.active = true;
    }
    
    public int getTradeId() {
        return trade_id;
    }
    
    public void setTradeId(int trade_id) {
        this.trade_id = trade_id;
    }
    
    public boolean getActive() {
        return active;
    }
    
    public void setActive(boolean active) {
        this.active = active;
    }
    
    public int getGiveUserId() {
        return give_user_id;
    }
    
    public void setGiveUserId(int give_user_id) {
        this.give_user_id = give_user_id;
    }
    
    public int getReceiveUserId() {
        return receive_user_id;
    }
    
    public void setReceiveUserId(int receive_user_id) {
        this.receive_user_id = receive_user_id;
    }

    public String getGiveUsername() {
        return give_username;
    }
    
    public void setGiveUsername(String give_username) {
        this.give_username = give_username;
    }
    
    public String getReceiveUsername() {
        return receive_username;
    }
    
    public void setReceiveUsername(String receive_username) {
        this.receive_username = receive_username;
    }
    
    public String getGiveReview() {
        return give_review;
    }
    
    public void setGiveReview(String give_review) {
        this.give_review = give_review;
    }
    
    public int getGiveReviewStars() {
        return give_review_stars;
    }
    
    public void setGiveReviewStars(int give_review_stars) {
        this.give_review_stars = give_review_stars;
    }
    
    public String getReceiveReview() {
        return receive_review;
    }
    
    public void setReceiveReview(String receive_review) {
        this.receive_review = receive_review;
    }
    
    public int getReceiveReviewStars() {
        return receive_review_stars;
    }
    
    public void setReceiveReviewStars(int receive_review_stars) {
        this.receive_review_stars = receive_review_stars;
    }
    
    public Pokemon getGivePkm() {
        return give_pkm;
    }

    public void setGivePkm(Pokemon give_pkm) {
        this.give_pkm = give_pkm;
    }

    public Pokemon getReceivePkm() {
        return receive_pkm;
    }

    public void setReceivePkm(Pokemon receive_pkm) {
        this.receive_pkm = receive_pkm;
    }

}
