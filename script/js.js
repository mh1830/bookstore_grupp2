//added a loop that places the different input slots that we need on the page. CSS to come later
//may need to be modified later.
function start (){
	var titles = ["-", "antal +", "Hyllnummer", "Utpris", "Leveransdatum", "F-Pris", "Författare","Titel" , "ISBN"];
	var namn = ["antalMin", "antalPlus", "hylla", "utpris", "leveransdatum", "fpris", "forfattare","titel","isbn"];

	for (var i=0;i<titles.length;i++)
	{
	$('#mainSection').prepend('<form class = "inputFields"><label class="'+ namn[i]+ '" for="'+ namn[i]+'">' + titles[i] + "</label>" + '<input class="lagersaldoSida" type="text" autofocus id="' + 
		namn[i] + '">' + "<br>" + "</form>");
	};
	collectFormData();
//this is where the search function starts.
$('#search').keyup(function(){
$.ajax({
		url:"sql",
		cache:false,
		data: {
			action: "autoComplete",
			fragment: $(this).val()
		},
		success:function(data){
			//we have recieved the answer as json
			
			renderResult(data);
		},
		error:function(data){
			console.log(x.responseJSON);
		}
	});

});

	// ask for all books for taylor
		
};

// render result
function renderResult(data){
	var html="<table id='searchResult'>";
	html += "<thead><tr>"
	+ "<th>ISBN</th>"
	+ "<th>Title</th>"
	+ "<th>Autor</th>"
	
	+ "</tr></thead>"


for (var i = 0; i < data.length; i++) {
	console.log(data[i]);
	// for each
	html +="<tr>"
	+"<td>" + data[i].ISBN + "</td>"
	+"<td>" + data[i].Titel + "</td>"
	+"<td>" + data[i].Forfattare + "</td>"
	+"</tr>"
}
html += "</table>";
console.log(html);

$(".result").html(html);

};
/*$("<td>").click(function(e){



select(e.data)
}*/


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
	return Math.round(inkMoms);
};

// send result of function utpris to console log
$(document).on("keyup","#fpris", function(){
	$("#utpris").val(utpris($(this).val()/1));
});

$(start,utpris);

$('.inputFields:last').addClass('calculatePrice');





