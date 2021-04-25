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





public class Offer {
    private int offer_id;
    private int trade_id;
    private int user_id;
    private int poke_num;
    private String name;
    private int level;
    private String gender;
    private boolean shiny;
    private String ability;
    private String move1;
    private String move2;
    private String move3;
    private String move4;
    private String nature;
    private int HP_IVs;
    private int Attack_IVs;
    private int Defense_IVs;
    private int SAttack_IVs;
    private int SDefense_IVs;
    private int Speed_IVs;
    private int HP_EVs;
    private int Attack_EVs;
    private int Defense_EVs;
    private int SAttack_EVs;
    private int SDefense_EVs;
    private int Speed_EVs;
    
    
    public Offer() {
        
    }
    
    public Offer (  int trade_id, int user_id, int poke_num, String name,
                    int level, String gender, boolean shiny, String ability,
                    String move1, String move2, String move3, String move4,
                    String nature, int HP_IVs, int Attack_IVs, int Defense_IVs,
                    int SAttack_IVs, int SDefense_IVs, int Speed_IVs,
                    int HP_EVs, int Attack_EVs, int Defense_EVs,
                    int SAttack_EVs, int SDefense_EVs, int Speed_EVs    ) {
        
        this.trade_id = trade_id;
        this.user_id = user_id;
        this.poke_num = poke_num;
        this.name = name;
        this.level = level;
        this.gender = gender;
        this.shiny = shiny;
        this.ability = ability;
        this.move1 = move1;
        this.move2 = move2;
        this.move3 = move3;
        this.move4 = move4;
        this.nature = nature;
        this.HP_IVs = HP_IVs;
        this.Attack_IVs = Attack_IVs;
        this.Defense_IVs = Defense_IVs;
        this.SAttack_IVs = SAttack_IVs;
        this.SDefense_IVs = SDefense_IVs;
        this.Speed_IVs = Speed_IVs;
        this.HP_EVs = HP_EVs;
        this.Attack_EVs = Attack_EVs;
        this.Defense_EVs = Defense_EVs;
        this.SAttack_EVs = SAttack_EVs;
        this.SDefense_EVs = SDefense_EVs;
        this.Speed_EVs = Speed_EVs;
    }
    
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
    
    public int getPokeNum() {
        return poke_num;
    }
    
    public void setPokeNum(int poke_num) {
        this.poke_num = poke_num;
    }
    
    public String getName () {
        return name;
    }
    
    public void setName (String name) {
        this.name = name;
    }
    
    public int getLevel() {
        return level;
    }
    
    public void setLevel(int level) {
        this.level = level;
    }
    
    public String getGender() {
        return gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public boolean getShiny() {
        return shiny;
    }
    
    public void setShiny(boolean shiny) {
        this.shiny = shiny;
    }
    
    public String getAbility () {
        return ability;
    }
    
    public void setAbility (String ability) {
        this.ability = ability;
    }
    
    public String getMove1 () {
        return move1;
    }
    
    public void setMove1 (String move1) {
        this.move1 = move1;
    }
    
    public String getMove2 () {
        return move2;
    }
    
    public void setMove2 (String move2) {
        this.move2 = move2;
    }
    
    public String getMove3 () {
        return move3;
    }
    
    public void setMove3 (String move3) {
        this.move3 = move3;
    }
    
    public String getMove4 () {
        return move4;
    }
    
    public void setMove4 (String move4) {
        this.move4 = move4;
    }
    
    public String getNature () {
        return nature;
    }
    
    public void setNature (String nature) {
        this.nature = nature;
    }
    
    public int getHPIVs () {
        return HP_IVs;
    }
    
    public void setHPIVs (int HP_IVs) {
        this.HP_IVs = HP_IVs;
    }
    
    public int getAttackIVs () {
        return Attack_IVs;
    }
    
    public void setAttackIVs (int Attack_IVs) {
        this.Attack_IVs = Attack_IVs;
    }
    
    public int getDefenseIVs () {
        return Defense_IVs;
    }
    
    public void setDefenseIVs (int Defense_IVs) {
        this.Defense_IVs = Defense_IVs;
    }
    
    public int getSAttackIVs () {
        return SAttack_IVs;
    }
    
    public void setSAttackIVs (int SAttack_IVs) {
        this.SAttack_IVs = SAttack_IVs;
    }
    
     public int getSDefenseIVs () {
        return SDefense_IVs;
    }
    
    public void setSDefenseIVs (int SDefense_IVs) {
        this.SDefense_IVs = SDefense_IVs;
    }
    
     public int getSpeedIVs () {
        return Speed_IVs;
    }
    
    public void setSpeedIVs (int Speed_IVs) {
        this.Speed_IVs = Speed_IVs;
    }
    
    public int getHPEVs () {
        return HP_EVs;
    }
    
    public void setHPEVs (int HP_EVs) {
        this.HP_EVs = HP_EVs;
    }
    
    public int getAttackEVs () {
        return Attack_EVs;
    }
    
    public void setAttackEVs (int Attack_EVs) {
        this.Attack_EVs = Attack_EVs;
    }
    
    public int getDefenseEVs () {
        return Defense_EVs;
    }
    
    public void setDefenseEVs (int Defense_EVs) {
        this.Defense_EVs = Defense_EVs;
    }
    
    public int getSAttackEVs () {
        return SAttack_EVs;
    }
    
    public void setSAttackEVs (int SAttack_EVs) {
        this.SAttack_EVs = SAttack_EVs;
    }
    
     public int getSDefenseEVs () {
        return SDefense_EVs;
    }
    
    public void setSDefenseEVs (int SDefense_EVs) {
        this.SDefense_EVs = SDefense_EVs;
    }
    
     public int getSpeedEVs () {
        return Speed_EVs;
    }
    
    public void setSpeedEVs (int Speed_EVs) {
        this.Speed_EVs = Speed_EVs;
    }
}
