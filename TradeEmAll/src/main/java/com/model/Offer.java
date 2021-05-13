
package com.model;

/**
 *
 * @author gonza
 */

public class Offer {
    private int offer_id;
    private int trade_id;
    private int user_id;
    private Pokemon pkm;
    
    public Offer() {}
    
    public int getOfferId() {
        return offer_id;
    }
    
    public void setOfferId(int offer_id) {
        this.offer_id = offer_id;
    }
    
    public int getTradeId() {
        return trade_id;
    }
    
    public void setTradeId(int trade_id) {
        this.trade_id = trade_id;
    }
    
    public int getUserId () {
        return user_id;
    }
    
    public void setUserId (int user_id) {
        this.user_id = user_id;
    } 
    
    public Pokemon getPkm() {
        return pkm;
    }

    public void setPkm(Pokemon pkm) {
        this.pkm = pkm;
    }
}
