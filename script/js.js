//added a loop that places the different input slots that we need on the page. CSS to come later
//may need to be modified later.
function start (){
	var titles = ["Antal ex", "Hyllnummer", "Utpris", "Leveransdatum", "F-Pris", "Författare","Titel" , "ISBN"];
	var namn = ["antal", "hylla", "utpris", "leveransdatum", "fpris", "forfattare","titel","isbn"];

	for (var i=0;i<titles.length;i++)
	{
	$('#mainSection').prepend('<div class = "inputFields">' + titles[i] + "<br>" + '<input class="lagersaldoSida" type="text" id="' + 
		namn[i] + '">' + "<br>" + "</div>");
	};
	collectFormData();
};

//a function to collent the data from the input fields
function collectFormData () {
	$('#mainSection').submit (function(){
		var data = {};
		//prevents the page from reloading when you hit submit.
		event.preventDefault();
		//looping through the input fields to collect the data from the inputfields.
		$('#mainSection .inputFields input').each(function(){
			data [this.id] = this.value
		}); 
		//sending the data to the function sendFormData
		sendFormData(data);
	}); 
};
//
function sendFormData (data) {

	data.action = "insertNewBook"; console.log(data)
	$.ajax({
		url:"sql",
		cache:false,
		data: data,
		success:function(x){
			console.log(x);
		},
		error:function(x){
			console.log(x.responseJSON);
		}
	});
}

// Calculator for sales price of the book. Includes both inkMoms and exMoms.
function utpris(fpris){
	var exMoms = fpris * 1.8
	var inkMoms = exMoms * 1.06
	return fpris
		+ "\nexMoms "
		+ exMoms
		+ "\ninkMoms "
		+ inkMoms;
};

// send result of function utpris to console log
console.log(utpris(10));

$(start,utpris);





