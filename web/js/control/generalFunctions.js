function createFormElementDOM(formElement, typeElemnt, idElement, nameElement, className, value, eventsArray, optionsArray, optionSelected, multiple)
{
	var elementObject = $("<"+formElement+"></"+formElement+">").attr({
		'type':typeElemnt,
		'id':idElement,
		'name':nameElement,
		'class':className,
		'value':value,
		'multiple':multiple
	});	
	
	for (var event in eventsArray)
	{
		elementObject.bind(event,function (){eval(eventsArray[event]);});
	}
	
	for (var option in optionsArray)
	{
		var optionSelect = $("<option></option>").attr({
			'id':optionsArray[option][0],
			'value':optionsArray[option][0]
		}).html(optionsArray[option][1]);
		
		if (optionsArray[option][0] == optionSelected) optionSelect.attr('selected', 'selected');
				
		elementObject.append(optionSelect);
	}
	return elementObject;
}

function showErros(errors)
{
	var errorString = errors[0];
	for (var i= 1; i<errors.length; i++)
	{
		errorString +="/n"+errors[i];
	}
	alert(errorString);
}