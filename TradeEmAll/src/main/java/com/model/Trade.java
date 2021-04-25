/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author gonza
 */
public class Trade {
    private int trade_id;
    private boolean active;
    private int give_user_id;
    private int receive_user_id;
    private String give_review;
    private String receive_review;
    private int give_review_stars;
    private int receive_review_stars;
    private int give_poke_num;
    private String give_name;
    private int give_level;
    private String give_gender;
    private boolean give_shiny;
    private String give_ability;
    private String give_move1;
    private String give_move2;
    private String give_move3;
    private String give_move4;
    private String give_nature;
    private int give_HP_IVs;
    private int give_Attack_IVs;
    private int give_Defense_IVs;
    private int give_SAttack_IVs;
    private int give_SDefense_IVs;
    private int give_Speed_IVs;
    private int give_HP_EVs;
    private int give_Attack_EVs;
    private int give_Defense_EVs;
    private int give_SAttack_EVs;
    private int give_SDefense_EVs;
    private int give_Speed_EVs;
    private int receive_poke_num;
    private String receive_name;
    private int receive_level;
    private String receive_gender;
    private boolean receive_shiny;
    private String receive_ability;
    private String receive_move1;
    private String receive_move2;
    private String receive_move3;
    private String receive_move4;
    private String receive_nature;
    private int receive_HP_IVs;
    private int receive_Attack_IVs;
    private int receive_Defense_IVs;
    private int receive_SAttack_IVs;
    private int receive_SDefense_IVs;
    private int receive_Speed_IVs;
    private int receive_HP_EVs;
    private int receive_Attack_EVs;
    private int receive_Defense_EVs;
    private int receive_SAttack_EVs;
    private int receive_SDefense_EVs;
    private int receive_Speed_EVs;
    
    public Trade() {
        this.active = true;
    }
    
    public Trade (  int give_user_id, int receive_user_id, 
                    String give_review, int give_review_stars, 
                    String receive_review, int receive_review_stars,
                    int give_poke_num, String give_name, int give_level, 
                    String give_gender, boolean give_shiny, String give_ability,
                    String give_move1, String give_move2, String give_move3,
                    String give_move4, String give_nature, int give_HP_IVs,
                    int give_Attack_IVs, int give_Defense_IVs, 
                    int give_SAttack_IVs, int give_SDefense_IVs,
                    int give_Speed_IVs, int give_HP_EVs, int give_Attack_EVs,
                    int give_Defense_EVs, int give_SAttack_EVs,
                    int give_SDefense_EVs, int give_Speed_EVs, 
                    int receive_poke_num, String receive_name, 
                    int receive_level, String receive_gender,
                    boolean receive_shiny, String receive_ability,
                    String receive_move1, String receive_move2,
                    String receive_move3, String receive_move4,
                    String receive_nature, int receive_HP_IVs,
                    int receive_Attack_IVs, int receive_Defense_IVs,
                    int receive_SAttack_IVs, int receive_SDefense_IVs,
                    int receive_Speed_IVs, int receive_HP_EVs,
                    int receive_Attack_EVs, int receive_Defense_EVs,
                    int receive_SAttack_EVs, int receive_SDefense_EVs,
                    int receive_Speed_EVs) {
        
        this.active = true;
        this.give_user_id = give_user_id;
        this.receive_user_id = receive_user_id;
        this.give_review = give_review;
        this.give_review_stars = give_review_stars;
        this.receive_review = receive_review;
        this.receive_review_stars = receive_review_stars;
        this.give_poke_num = give_poke_num;
        this.give_name = give_name;
        this.give_level = give_level;
        this.give_gender = give_gender;
        this.give_shiny = give_shiny;
        this.give_ability = give_ability;
        this.give_move1 = give_move1;
        this.give_move2 = give_move2;
        this.give_move3 = give_move3;
        this.give_move4 = give_move4;
        this.give_nature = give_nature;
        this.give_HP_IVs = give_HP_IVs;
        this.give_Attack_IVs = give_Attack_IVs;
        this.give_Defense_IVs = give_Defense_IVs;
        this.give_SAttack_IVs = give_SAttack_IVs;
        this.give_SDefense_IVs = give_SDefense_IVs;
        this.give_Speed_IVs = give_Speed_IVs;
        this.give_HP_EVs = give_HP_EVs;
        this.give_Attack_EVs = give_Attack_EVs;
        this.give_Defense_EVs = give_Defense_EVs;
        this.give_SAttack_EVs = give_SAttack_EVs;
        this.give_SDefense_EVs = give_SDefense_EVs;
        this.give_Speed_EVs = give_Speed_EVs;
        this.receive_poke_num = receive_poke_num;
        this.receive_name = receive_name;
        this.receive_level = receive_level;
        this.receive_gender = receive_gender;
        this.receive_shiny = receive_shiny;
        this.receive_ability = receive_ability;
        this.receive_move1 = receive_move1;
        this.receive_move2 = receive_move2;
        this.receive_move3 = receive_move3;
        this.receive_move4 = receive_move4;
        this.receive_nature = receive_nature;
        this.receive_HP_IVs = receive_HP_IVs;
        this.receive_Attack_IVs = receive_Attack_IVs;
        this.receive_Defense_IVs = receive_Defense_IVs;
        this.receive_SAttack_IVs = receive_SAttack_IVs;
        this.receive_SDefense_IVs = receive_SDefense_IVs;
        this.receive_Speed_IVs = receive_Speed_IVs;
        this.receive_HP_EVs = receive_HP_EVs;
        this.receive_Attack_EVs = receive_Attack_EVs;
        this.receive_Defense_EVs = receive_Defense_EVs;
        this.receive_SAttack_EVs = receive_SAttack_EVs;
        this.receive_SDefense_EVs = receive_SDefense_EVs;
        this.receive_Speed_EVs = receive_Speed_EVs;
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
        return give_user_id;
    }
    
    public void setReceiveUserId(int receive_user_id) {
        this.receive_user_id = receive_user_id;
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
    
    public int getGivePokeNum() {
        return give_poke_num;
    }
    
    public void setGivePokeNum(int give_poke_num) {
        this.give_poke_num = give_poke_num;
    }
    
    public String getGiveName () {
        return give_name;
    }
    
    public void setGiveName (String give_name) {
        this.give_name = give_name;
    }
    
    public int getGiveLevel() {
        return give_level;
    }
    
    public void setGiveLevel(int give_level) {
        this.give_level = give_level;
    }
    
    public String getGiveGender() {
        return give_gender;
    }
    
    public void setGiveGender(String give_gender) {
        this.give_gender = give_gender;
    }
    
    public boolean getGiveShiny() {
        return give_shiny;
    }
    
    public void setGiveShiny(boolean give_shiny) {
        this.give_shiny = give_shiny;
    }
    
    public String getGiveAbility () {
        return give_ability;
    }
    
    public void setGiveAbility (String give_ability) {
        this.give_ability = give_ability;
    }
    
    public String getGiveMove1 () {
        return give_move1;
    }
    
    public void setGiveMove1 (String give_move1) {
        this.give_move1 = give_move1;
    }
    
    public String getGiveMove2 () {
        return give_move2;
    }
    
    public void setGiveMove2 (String give_move2) {
        this.give_move2 = give_move2;
    }
    
    public String getGiveMove3 () {
        return give_move3;
    }
    
    public void setGiveMove3 (String give_move3) {
        this.give_move3 = give_move3;
    }
    
    public String getGiveMove4 () {
        return give_move4;
    }
    
    public void setGiveMove4 (String give_move4) {
        this.give_move4 = give_move4;
    }
    
    public String getGiveNature () {
        return give_nature;
    }
    
    public void setGiveNature (String give_nature) {
        this.give_nature = give_nature;
    }
    
    public int getGiveHPIVs () {
        return give_HP_IVs;
    }
    
    public void setGiveHPIVs (int give_HP_IVs) {
        this.give_HP_IVs = give_HP_IVs;
    }
    
    public int getGiveAttackIVs () {
        return give_Attack_IVs;
    }
    
    public void setGiveAttackIVs (int give_Attack_IVs) {
        this.give_Attack_IVs = give_Attack_IVs;
    }
    
    public int getGiveDefenseIVs () {
        return give_Defense_IVs;
    }
    
    public void setGiveDefenseIVs (int give_Defense_IVs) {
        this.give_Defense_IVs = give_Defense_IVs;
    }
    
    public int getGiveSAttackIVs () {
        return give_SAttack_IVs;
    }
    
    public void setGiveSAttackIVs (int give_SAttack_IVs) {
        this.give_SAttack_IVs = give_SAttack_IVs;
    }
    
     public int getGiveSDefenseIVs () {
        return give_SDefense_IVs;
    }
    
    public void setGiveSDefenseIVs (int give_SDefense_IVs) {
        this.give_SDefense_IVs = give_SDefense_IVs;
    }
    
     public int getGiveSpeedIVs () {
        return give_Speed_IVs;
    }
    
    public void setGiveSpeedIVs (int give_Speed_IVs) {
        this.give_Speed_IVs = give_Speed_IVs;
    }
    
    public int getGiveHPEVs () {
        return give_HP_EVs;
    }
    
    public void setGiveHPEVs (int give_HP_EVs) {
        this.give_HP_EVs = give_HP_EVs;
    }
    
    public int getGiveAttackEVs () {
        return give_Attack_EVs;
    }
    
    public void setGiveAttackEVs (int give_Attack_EVs) {
        this.give_Attack_EVs = give_Attack_EVs;
    }
    
    public int getGiveDefenseEVs () {
        return give_Defense_EVs;
    }
    
    public void setGiveDefenseEVs (int give_Defense_EVs) {
        this.give_Defense_EVs = give_Defense_EVs;
    }
    
    public int getGiveSAttackEVs () {
        return give_SAttack_EVs;
    }
    
    public void setGiveSAttackEVs (int give_SAttack_EVs) {
        this.give_SAttack_EVs = give_SAttack_EVs;
    }
    
     public int getGiveSDefenseEVs () {
        return give_SDefense_EVs;
    }
    
    public void setGiveSDefenseEVs (int give_SDefense_EVs) {
        this.give_SDefense_EVs = give_SDefense_EVs;
    }
    
     public int getGiveSpeedEVs () {
        return give_Speed_EVs;
    }
    
    public void setGiveSpeedEVs (int give_Speed_EVs) {
        this.give_Speed_EVs = give_Speed_EVs;
    }
    
    public int getReceivePokeNum() {
        return receive_poke_num;
    }
    
    public void setReceivePokeNum(int receive_poke_num) {
        this.receive_poke_num = receive_poke_num;
    }
    
    public String getReceiveName () {
        return receive_name;
    }
    
    public void setReceiveName (String receive_name) {
        this.receive_name = receive_name;
    }
    
    public int getReceiveLevel() {
        return receive_level;
    }
    
    public void setReceiveLevel(int receive_level) {
        this.receive_level = receive_level;
    }
    
    public String getReceiveGender() {
        return receive_gender;
    }
    
    public void setReceiveGender(String receive_gender) {
        this.receive_gender = receive_gender;
    }
    
    public boolean getReceiveShiny() {
        return receive_shiny;
    }
    
    public void setReceiveShiny(boolean receive_shiny) {
        this.receive_shiny = receive_shiny;
    }
    
    public String getReceiveAbility () {
        return receive_ability;
    }
    
    public void setReceiveAbility (String receive_ability) {
        this.receive_ability = receive_ability;
    }
    
    public String getReceiveMove1 () {
        return receive_move1;
    }
    
    public void setReceiveMove1 (String receive_move1) {
        this.receive_move1 = receive_move1;
    }
    
    public String getReceiveMove2 () {
        return receive_move2;
    }
    
    public void setReceiveMove2 (String receive_move2) {
        this.receive_move2 = receive_move2;
    }
    
    public String getReceiveMove3 () {
        return receive_move3;
    }
    
    public void setReceiveMove3 (String receive_move3) {
        this.receive_move3 = receive_move3;
    }
    
    public String getReceiveMove4 () {
        return receive_move4;
    }
    
    public void setReceiveMove4 (String receive_move4) {
        this.receive_move4 = receive_move4;
    }
    
    public String getReceiveNature () {
        return receive_nature;
    }
    
    public void setReceiveNature (String receive_nature) {
        this.receive_nature = receive_nature;
    }
    
    public int getReceiveHPIVs () {
        return receive_HP_IVs;
    }
    
    public void setReceiveHPIVs (int receive_HP_IVs) {
        this.receive_HP_IVs = receive_HP_IVs;
    }
    
    public int getReceiveAttackIVs () {
        return receive_Attack_IVs;
    }
    
    public void setReceiveAttackIVs (int receive_Attack_IVs) {
        this.receive_Attack_IVs = receive_Attack_IVs;
    }
    
    public int getReceiveDefenseIVs () {
        return receive_Defense_IVs;
    }
    
    public void setReceiveDefenseIVs (int receive_Defense_IVs) {
        this.receive_Defense_IVs = receive_Defense_IVs;
    }
    
    public int getReceiveSAttackIVs () {
        return receive_SAttack_IVs;
    }
    
    public void setReceiveSAttackIVs (int receive_SAttack_IVs) {
        this.receive_SAttack_IVs = receive_SAttack_IVs;
    }
    
     public int getReceiveSDefenseIVs () {
        return receive_SDefense_IVs;
    }
    
    public void setReceiveSDefenseIVs (int receive_SDefense_IVs) {
        this.receive_SDefense_IVs = receive_SDefense_IVs;
    }
    
     public int getReceiveSpeedIVs () {
        return receive_Speed_IVs;
    }
    
    public void setReceiveSpeedIVs (int receive_Speed_IVs) {
        this.receive_Speed_IVs = receive_Speed_IVs;
    }
    
    public int getReceiveHPEVs () {
        return receive_HP_EVs;
    }
    
    public void setReceiveHPEVs (int receive_HP_EVs) {
        this.receive_HP_EVs = receive_HP_EVs;
    }
    
    public int getReceiveAttackEVs () {
        return receive_Attack_EVs;
    }
    
    public void setReceiveAttackEVs (int receive_Attack_EVs) {
        this.receive_Attack_EVs = receive_Attack_EVs;
    }
    
    public int getReceiveDefenseEVs () {
        return receive_Defense_EVs;
    }
    
    public void setReceiveDefenseEVs (int receive_Defense_EVs) {
        this.receive_Defense_EVs = receive_Defense_EVs;
    }
    
    public int getReceiveSAttackEVs () {
        return receive_SAttack_EVs;
    }
    
    public void setReceiveSAttackEVs (int receive_SAttack_EVs) {
        this.receive_SAttack_EVs = receive_SAttack_EVs;
    }
    
     public int getReceiveSDefenseEVs () {
        return receive_SDefense_EVs;
    }
    
    public void setReceiveSDefenseEVs (int receive_SDefense_EVs) {
        this.receive_SDefense_EVs = receive_SDefense_EVs;
    }
    
     public int getReceiveSpeedEVs () {
        return receive_Speed_EVs;
    }
    
    public void setReceiveSpeedEVs (int receive_Speed_EVs) {
        this.receive_Speed_EVs = receive_Speed_EVs;
    }
}
