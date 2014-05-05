/**
 * @author Adrián de Feo Martínez
 * function that prepare the document to start working
 * @param $(document)
 * @return nothing
 * @version 1.0
 **/
$(document).ready(function(){
    //hide elements, generate and animate
    conectDB();
    //animations();
});

/**
 * @author Adrián de Feo Martínez
 * createElements - this function create the firsts DOM elements with all the necessary data
 * collected from the server from function that use AJAX
 * @param
 * @return nothin
 * @version 1.0
 **/
function createElements(){
    var content = $("#content");
    //first AJAX call with the function fillSelectsCharacters()
    var charactersArray = fillSelectsCharacters();
    var optionsArray = new Array();
    for(var i=0;i<charactersArray.length;i++)
    {
        optionsArray.push(charactersArray[i]);
    }
    
    var selectWithCharacters1 = $("<p>Player 1</p>").append(createFormElementDOM("select", "select", "selectWithCharacters1", "selectWithCharacters1", "", "", "", optionsArray, "",false));
    
    //second AJAX call to fill the second select with the character with the same function of before
    var charactersArray = fillSelectsCharacters();
    var optionsArray = new Array();
    for(var i=0;i<charactersArray.length;i++)
    {
        optionsArray.push(charactersArray[i]);
    }
    
    //this eventsArray is needed to change the select with the movements that is created in a dynamic way usix a function that use AJAX
    var eventsArray = new Array();
    eventsArray["change"]="putMovesInSelect()";
    var selectWithCharacters2 = $("<p>Player 2</p>").append(createFormElementDOM("select", "select", "selectWithCharacters2", "selectWithCharacters2", "", "",eventsArray, optionsArray, "",false));
    
    content.append("<h1>Please, select your character!!<h1>");
    content.append(selectWithCharacters1);
    content.append(selectWithCharacters2);
    //here the two select are already created
}


/**
 * @author Adrián de Feo Martínez
 * conectDB - this function start all the document
 * @param 
 * @return
 * @version 1.0
 **/
function conectDB(){
    createElements();
}

/**
 * @author Adrián de Feo Martínez
 * fillSelectsCharacters - this function call the server with AJAX and fill one array to fill the selects in the main document
 * @param 
 * @return arrayObj - array with all the necesssary data of the character to fill the selects
 * @version 1.0
 **/
function fillSelectsCharacters(){
    var outPutData;
    var error=false;
    $.ajax({
		  url: 'TheServlet',
		  type: 'POST',
		  async: false,
		  data: 'action=10000',
		  dataType: "json",
		  success: function (response) { 			  
			outPutData = response;
		  },
		  error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status+"\n"+thrownError);
                        error=true;
		  }
	});
    if(!error)
    {
        var characters = new characterClass();
        var arrayObj = new Array();
        for(var i=0; i<outPutData.length;i++)
        {
                var obj = outPutData[i];
                /*characters.construct(obj.idCH, obj.name, obj.health, obj.dash_type, obj.jump_startup, obj.n_jumps,
                        obj.n_air_dash, obj.combo_prorate, obj.combo_prorate_additional, obj.backdash_full_time, obj.backdash_full_time_additional,
                        obj.backdash_invul_start, obj.backdash_invul_start_additional, obj.backdash_invul_end, obj.backdash_invul_end_additional);*/
                characters.constructCharacterToSelect(obj.idCH, obj.name);      

                arrayObj.push(new Array(characters.getIdCH(), characters.getName()));
        }
    }
    return arrayObj;
}

/**
 * @author Adrián de Feo Martínez
 * putmovesInSelect - using AJAX, this function create the new select with the info of the movements of the second character the user
 * chose in the second select and create the button to tell if that movement is punishable too
 * @param 
 * @return nothing
 * @version 1.0
 **/
function putMovesInSelect()
{
    
    var content = $("#content");
    var idCharacterInSelect = $("#selectWithCharacters2").val();
    var selectWithMovements= $("#movementsSelect");
    selectWithMovements.children().remove();
    var outPutData2;
    var error=false;
    $.ajax({
		  url: 'TheServlet',
		  type: 'POST',
		  async: false,
		  data: 'action=20000&idCH='+idCharacterInSelect,
		  dataType: "json",
		  success: function (response) { 			  
			outPutData2 = response;
		  },
		  error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status+"\n"+thrownError);
                        error=true;
		  }
	});
        //here is a test if the character is contemplated in the database
        if(outPutData2.length!==0){
            if(!error)
            {
                //here is all the process to create the select with the movements
                var arrayObj = new Array();
                for(var i=0;i<outPutData2.length;i++)
                {
                    var obj = outPutData2[i];
                    var movements = new movementClass();
                    /*movements.construct(obj.idmov,obj.input,obj.namemove,obj.cancel,obj.starter,obj.guard,obj.level,obj.attribute,obj.startup,
                            obj.active,obj.recovery,obj.frameadv_type,obj.frameadv_num,obj.invul_start,obj.invul_end,obj.invul_where);*/
                    movements.constructToSelect(obj.idmov, obj.namemove);

                    arrayObj.push(new Array(movements.getIdmov(), movements.getNamemove()));
                }
                var optionsArray = new Array();
                for(var i=0;i<arrayObj.length;i++)
                {
                    optionsArray.push(arrayObj[i]);
                }
                //eventsArray is needed to compare the two characters in a dynamic way
                    var eventsArray = new Array();
                    eventsArray["change"] = "createButtonCompare()";
                    //here the select is created, and if the value of the select is change, a button is created or replaced to compare all the necessary data
                    var selectWithMovementsCharacter2 = $("<p>Select the move you want to punish</p>").append(createFormElementDOM("select", "select", "selectWithMovementsCharacter2", "", "", "",eventsArray, optionsArray, "",false));
                    selectWithMovements.append(selectWithMovementsCharacter2);
                    content.append(selectWithMovements);
            } 
            else
            {
                alert("Error at connect with the database");
            }
        }else{alert("The second character you selected isn't contemplated yet, please wait a bit longer");}
        
}


/**
 * @author Adrián de Feo Martínez
 * 
 * @param idMovementToCompare - this param is the idmov of the movements the user wants to punish
 * @param idFirstCharacter - this is the idCH of the first character (the user character)
 * with this idCh the app will search all the movements the user can do to punish the movement with the id idMovementToCompare
 * @return
 * @version 1.0
 **/
function compareAttack(idMovementToCompare,idFirstCharacter)
{
    var resultPunish = $("#resultPunish");
    var outPutData3;
    var outPutData4;
    var error=false;
    $.ajax({
		  url: 'TheServlet',
		  type: 'POST',
		  async: false,
		  data: 'action=20000&idCH='+idFirstCharacter,
		  dataType: "json",
		  success: function (response) { 			  
			outPutData3 = response;
		  },
		  error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status+"\n"+thrownError);
                        error=true;
		  }
	});
        $.ajax({
		  url: 'TheServlet',
		  type: 'POST',
		  async: false,
		  data: 'action=30000&idmov='+idMovementToCompare,
		  dataType: "json",
		  success: function (response) { 			  
			outPutData4 = response;
		  },
		  error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status+"\n"+thrownError);
                        error=true;
		  }
	});
        if(outPutData3.length!==0){
                if(!error)
                {
                    //outPutData3 it's the movements of the first character
                    //outPutData4 is the array with the data of the attackt of the rival's movement
                    var arrayObject1 = new Array();

                        var obj = outPutData4;
                        var movements = new movementClass();
                        /*movements.construct(obj.idmov,obj.input,obj.namemove,obj.cancel,obj.starter,obj.guard,obj.level,obj.attribute,obj.startup,
                                obj.active,obj.recovery,obj.frameadv_type,obj.frameadv_num,obj.invul_start,obj.invul_end,obj.invul_where);*/
                        movements.constructMoveToPunish1(obj.idmov, obj.namemove, obj.startup, obj.frameadv_type, obj.frameadv_num);
                        arrayObject1.push(obj.idmov, obj.namemove, obj.startup, obj.frameadv_type, obj.frameadv_num);
                    if(arrayObject1[3]==="-")
                    {
                        //create all the array of movements object, after this,
                        //traverse the arrayObject2 and compare all the movements with the rivals movements
                        var arrayObject2 = new Array();
                        for(var i=0;i<outPutData3.length;i++)
                        {
                            var obj = outPutData3[i];
                            var movements = new movementClass();
                            /*movements.construct(obj.idmov,obj.input,obj.namemove,obj.cancel,obj.starter,obj.guard,obj.level,obj.attribute,obj.startup,
                                    obj.active,obj.recovery,obj.frameadv_type,obj.frameadv_num,obj.invul_start,obj.invul_end,obj.invul_where);*/
                            movements.constructMoveToPunish2(obj.idmov, obj.namemove, obj.startup);
                            arrayObject2.push(new Array(obj.idmov, obj.namemove, obj.startup));
                        }
                        //traverse the arrayObject2 array and compare with the first array

                        var arrayMovPunish = new Array();
                        for(var j=0; j<arrayObject2.length;j++)
                        {
                            if(arrayObject1[4] > arrayObject2[j][2])
                            {
                                arrayMovPunish.push(arrayObject2[j][1]);
                                //push the namemove here
                            }
                        }
                        if(arrayMovPunish.length!==0)
                        {
                            alert("You can punish "+arrayObject1[1]+" with "+arrayMovPunish);
                        }
                        else
                        {
                            alert("Your character can't punish "+arrayObject1[1]+" after blocking");
                        }

                    }
                    else
                    {
                        //write in the main screen that the movement is unpunisheable
                        alert("The movement "+arrayObject1[1]+" is unpunisheable");
                    }

                }
                else
                {
                    alert("This doesn't work");
                }
        }
        else{alert("The first character you selected isn't contemplated yet, please wait a bit longer");}
        
}

/**
 * @author Adrián de Feo Martínez
 * createButtonCompare - this function create the button that call the function to compare both character (that function is compareAttack)
 * @param 
 * @return
 * @version 1.0
 **/
function createButtonCompare()
{ 
    $("#buttonToCompare").remove();
    var selectWithMovements= $("#movementsSelect");
    var divButton= createFormElementDOM("div", "", "buttonToCompare", "", "", "", "", "", "", false);
    selectWithMovements.append(divButton);
   
    var eventsArray = new Array();
    eventsArray["click"] = "compareAttack('"+$("#selectWithMovementsCharacter2").val()+"','"+$("#selectWithCharacters1").val()+"')";
    //create function to grab the first character and the movement
    var buttonToCompare = createFormElementDOM("input", "button", "buttonToCompareId","","","Search punish", eventsArray,"","",false);
    divButton.append(buttonToCompare);
}