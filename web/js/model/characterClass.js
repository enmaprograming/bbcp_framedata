/**
 * @author Adrián de Feo Martínez
 * @param idCH, name, health, dash_type, jump_startup, n_jumps, n_air_dash, combo_prorate, combo_prorate_additional, backdash_full_time,
 * backdash_full_time_additional, backdash_invul_start, backdash_invul_start_additional, backdash_invul_end, backdash_invul_end_additional
 * @return nothing
 * @version 1.0
 **/
var characterClass = function(){
    this.idCH;
    this.name;
    this.health;
    this.dash_type;
    this.jump_startup;
    this.n_jumps;
    this.n_air_dash;
    this.combo_prorate;
    this.combo_prorate_additional;
    this.backdash_full_time;
    this.backdash_full_time_additional;
    this.backdash_invul_start;
    this.backdash_invul_start_additional;
    this.backdash_invul_end;
    this.backdash_invul_end_additional;
    
    /**
    * @author Adrián de Feo Martínez
    * construct - standar construct to create the character class
    * @param 
    * @return
    * @version 1.0
    **/
    this.construct = function(idCH, name, health, dash_type, jump_startup, n_jumps, n_air_dash, combo_prorate, combo_prorate_additional,
                             backdash_full_time, backdash_full_time_additional, backdash_invul_start,
                             backdash_invul_start_additional, backdash_invul_end, backdash_invul_end_additional){
        
        this.setIdCH(idCH);
        this.setName(name);
        this.setHealth(health);
        this.setDash_type(dash_type);
        this.setJump_startup(jump_startup);
        this.setN_jump(n_jumps);
        this.setN_air_dash(n_air_dash);
        this.setCombo_prorate(combo_prorate);
        this.setCombo_prorate_additional(combo_prorate_additional);
        this.setBackdash_full_time(backdash_full_time);
        this.setBackdash_full_time_additional(backdash_full_time_additional);
        this.setBackdash_invul_start(backdash_invul_start);
        this.setBackdash_invul_start_additional(backdash_invul_start_additional);
        this.setBackdash_invul_end(backdash_invul_end);
        this.setBackdash_invul_end_additional(backdash_invul_end_additional);
    };
    
    this.constructCharacterToSelect = function(idCH, name){
        this.setIdCH(idCH);
        this.setName(name);
    }
    
    //this.get = function(){return this.}
    this.getIdCH = function(){return this.idCH;};
    this.getName = function(){return this.name;};
    this.getHealth = function(){return this.health;};
    this.getDash_type = function(){return this.dash_type;};
    this.getJump_startup = function(){return this.jump_startup;};
    this.getN_jump = function(){return this.n_jumps;};
    this.getN_air_dash = function(){return this.n_air_dash;};
    this.getCombo_prorate = function(){return this.combo_prorate;};
    this.getCombo_prorate_additional = function(){return this.combo_prorate_additional;};
    this.getBackdash_full_time = function(){return this.backdash_full_time;};
    this.getBackdash_full_time_additional = function(){return this.backdash_full_time_additional;};
    this.getBackdash_invul_start = function(){return this.backdash_invul_start;};
    this.getBackdash_invul_start_additional = function(){return this.backdash_invul_start_additional;};
    this.getBackdash_invul_end = function(){return this.backdash_invul_end;};
    this.getBackdash_invul_end_additional = function(){return this.backdash_invul_end_additional;};
    
    //this. = function(){this. =}
    this.setIdCH = function(idCH){this.idCH=idCH;};
    this.setName = function(name){this.name=name;};
    this.setHealth = function(health){this.health=health;};
    this.setDash_type = function(dash_type){this.dash_type=dash_type;};
    this.setJump_startup = function(jump_startup){this.jump_startup=jump_startup;};
    this.setN_jump = function(n_jumps){this.n_jumps=n_jumps;};
    this.setN_air_dash = function(n_air_dash){this.n_air_dash=n_air_dash;};
    this.setCombo_prorate = function(combo_prorate){this.combo_prorate =combo_prorate;};
    this.setCombo_prorate_additional = function(combo_prorate_additional){this.combo_prorate_additional=combo_prorate_additional;};
    this.setBackdash_full_time = function(backdash_full_time){this.backdash_full_time=backdash_full_time;};
    this.setBackdash_full_time_additional = function(backdash_full_time_additional){this.backdash_full_time_additional=backdash_full_time_additional;};
    this.setBackdash_invul_start = function(backdash_invul_start){this.backdash_invul_start=backdash_invul_start;};
    this.setBackdash_invul_start_additional = function(backdash_invul_start_additional){this.backdash_invul_start_additional=backdash_invul_start_additional;};
    this.setBackdash_invul_end = function(backdash_invul_end){this.backdash_invul_end=backdash_invul_end;};
    this.setBackdash_invul_end_additional = function(backdash_invul_end_additional){this.backdash_invul_end_additional=backdash_invul_end_additional;};
};
