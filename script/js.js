//added a loop that places the different input slots that we need on the page. CSS to come later
//may need to be modified later.
function start (){
	var titles = ["ISBN", "Titel", "Författare", "F-Pris", "Leveransdatum", "Utpris", "Hyllnummer", "Antal ex"];

	for (var i=0;i<titles.length;i++)
	{
	$('#mainSection').prepend('<div class = "inputFields">' + titles[i] + "<br>" + '<input class="lagersaldoSida" type="text">' + "<br>" + "</div>");
	};
};

$(start);

