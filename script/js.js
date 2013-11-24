//added a loop that places the different input slots that we need on the page. CSS to come later
//may need to be modified later.

var titles = ["ISBN", "F-Pris", "Leveransdatum", "Utpris", "Antal ex", "Hyllnummer"];

for (var i=0;i<titles.length;i++)
{
document.write(titles[i] + "<br>" + '<input type="text">' + "<br>");
}