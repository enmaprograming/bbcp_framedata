/**
 * @author Adrián de Feo Martínez
 * 
 * @param 
 * @return
 * @version 1.0
 **/
/**
 * @author Adrián de Feo Martínez
 * @param idmov, input, namemove, cancel,starter, guard, level, attribute, startup, active, recovery
 * frameadv_type, frameadv_num, invul_start, invul_end, invul_where
 * @return nothing
 * @version 1.0
 **/
var movementClass = function(){
    this.idmov;
    this.input;
    this.namemove;
    this.cancel;
    this.starter;
    this.guard;
    this.level;
    this.attribute;
    this.startup;
    this.active;
    this.recovery;
    this.frameadv_type;
    this.frameadv_num;
    this.invul_start;
    this.invul_end;
    this.invul_where;
    
    /**
    * @author Adrián de Feo Martínez
    * construct - standar construct to create the movements objects
    * @param 
    * @return
    * @version 1.0
    **/
    this.construct = function(idmov, input, namemove, cancel, starter, guard, level, attribute, startup, active, recovery, frameadv_type, frameadv_num, invul_start, invul_end, invul_where){
        //this.set ();
        this.setIdmov(idmov);
        this.setInput(input);
        this.setNamemove(namemove);
        this.setCancel(cancel);
        this.setStarter(starter);
        this.setGuard(guard);
        this.setLevel(level);
        this.setAttribute(attribute);
        this.setStartup(startup);
        this.setActive(active);
        this.setRecovery(recovery);
        this.setFrameadv_type(frameadv_type);
        this.setFrameadv_num(frameadv_num);
        this.setInvul_start(invul_start);
        this.setInvul_end(invul_end);
        this.setInvul_where(invul_where);
    };
    
    this.constructToSelect = function(idmov, namemove){
        this.setIdmov(idmov);
        this.setNamemove(namemove);
    };
    
    
    /*idmov, namemov, startup*/
    this.constructMoveToPunish2 = function(idmov, namemove, startup){
        this.setIdmov(idmov);
        this.setNamemove(namemove);
        this.setStartup(startup);
    };
    
    /*idmov, namemove, startup, frameadv_type, frameadv_num*/
    this.constructMoveToPunish1 = function(idmov, namemove, startup, frameadv_type, frameadv_num){
        this.setIdmov(idmov);
        this.setNamemove(namemove);
        this.setStartup(startup);
        this.setFrameadv_type(frameadv_type);
        this.setFrameadv_num(frameadv_num);
    };
    
    

    this.getIdmov = function(){return this.idmov;};
    this.getInput = function(){return this.input;};
    this.getNamemove = function(){return this.namemove;};
    this.getCancel = function(){return this.cancel;};
    this.getStarter = function(){return this.starter;};
    this.getGuard = function(){return this.guard;};
    this.getLevel = function(){return this.level;};
    this.getAttribute = function(){return this.attribute;};
    this.getStartup = function(){return this.startup;};
    this.getActive = function(){return this.active;};
    this.getRecovery = function(){return this.recovery;};
    this.getFrameadv_type = function(){return this.frameadv_type;};
    this.getFrameadv_num = function(){return this.frameadv_num;};
    this.getInvul_start = function(){return this.invul_start;};
    this.getInvul_end = function(){return this.invul_end;};
    this.getInvul_where = function(){return this.invul_where;};
    
    
    

    this.setIdmov = function(idmov){this.idmov=idmov;};
    this.setInput = function(input){this.input=input;};
    this.setNamemove = function(namemove){this.namemove=namemove;};
    this.setCancel = function(cancel){this.cancel=cancel;};
    this.setStarter = function(starter){this.starter=starter;};
    this.setGuard = function(guard){this.guard=guard;};
    this.setLevel = function(level){this.level=level;};
    this.setAttribute = function(attribute){this.attribute=attribute;};
    this.setStartup = function(startup){this.startup=startup;};
    this.setActive = function(active){this.active=active;};
    this.setRecovery = function(recovery){this.recovery=recovery;};
    this.setFrameadv_type = function(frameadv_type){this.frameadv_type=frameadv_type;};
    this.setFrameadv_num = function(frameadv_num){this.frameadv_num=frameadv_num;};
    this.setInvul_start = function(invul_start){this.invul_start=invul_start;};
    this.setInvul_end = function(invul_end){this.invul_end=invul_end;};
    this.setInvul_where = function(invul_where){this.invul_where=invul_where;};
};