// Release 0:

document.getElementById("release-0").className = "done";


// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:

document.getElementsByTagName("H1")[0].innerHTML="I completed release 2.";


// Release 3:
//Add the background color #955251 to the #release-3 div.

document.getElementById('release-3').style.backgroundColor="#955251";



// Release 4:
var x = document.getElementsByClassName("release-4");
var i;
for( i = 0; i < x.length; i++ ) {
    x[i].style.fontSize="2em";
}


// Release 5:
//Take the HTML in the template.hidden and append it to the bottom of the page.

var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));

