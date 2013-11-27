//added a loop that places the different input slots that we need on the page. CSS to come later
//may need to be modified later.
function start (){
	var titles = ["ISBN", "Titel", "Författare", "F-Pris", "Leveransdatum", "Utpris", "Hyllnummer", "Antal ex"];

	for (var i=0;i<titles.length;i++)
	{
	$('#mainSection').prepend('<div class = "inputFields">' + titles[i] + "<br>" + '<input class="lagersaldoSida" type="text">' + "<br>" + "</div>");
	};
};

// Calculator for sales price of the book. Includes both inkMoms and exMoms.
function utpris(fpris){
	var exMoms = fpris * 1.8
	var inkMoms = exMoms * 1.25
	return fpris
		+ "\nexMoms "
		+ exMoms
		+ "\ninkMoms "
		+ inkMoms;
};

// send result of function utpris to console log
console.log(utpris(10));

$(start,utpris);





