 // JavaScript Olympics

// I paired with:Jack Huang on this challenge.

// This challenge took me [1.5] hours.


// Warm Up

// Bulk Up

var jordan = {
  name: "Michael Jordan",
  event: "Basketball",
}
var curry = {
  name: "Stephen Curry",
  event: "Basketball",
}
var athlete = [jordan, curry];
function bulkUp(athlete) {
  for (var i = 0; i < athlete.length; i++) {
    athlete[i].win = athlete[i].name + " has won " + athlete[i].event;
    console.log(athlete[i].win)
  }
}

bulkUp(athlete);
// Jumble your words

function reverse (str) {
  var rev = "";
  for (var i = str.length-1 ; i > -1; i--) {
    rev += str[i];
  }
  console.log(rev);
}

reverse("Hello")

// 2,4,6,8

function evenNumbers(array) {
  var evenArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 === 0) {
      evenArray += array[i];
    }
  }
  console.log(evenArray)
}

evenNumbers([1,2,3,4,5])

// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
//What JavaScript knowledge did you solidify in this challenge?
//I found this challenge to be quite confusing. It took us a
//long time to sort of figure out what the releases are
//asking us to do. I guess one thing I got out of this challenge
// was that I was not completely familiar with several JavaScript
//concepts, so I went back and did some more readings to further
//solidify my understanding.

//What are constructor functions?
//
//How are constructors different from Ruby classes (in your research)?