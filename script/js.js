//added a loop that places the different input slots that we need on the page. CSS to come later
//may need to be modified later.

var titles = ["ISBN", "Titel", "Författare", "F-Pris", "Leveransdatum", "Utpris", "Antal ex", "Hyllnummer"];

for (var i=0;i<titles.length;i++)
{
$('#mainSection').append('<div class = "inputFields">' + titles[i] + "<br>" + '<input class="lagersaldoSida" type="text">' + "<br>" + "</div>");
}