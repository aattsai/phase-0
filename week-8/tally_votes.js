// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Jay Yee
// This challenge took me [3.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// ITERATE through names in votes object
//   ITERATE through nested votes
//     TAKE the property and store it in object voteCount
//       IF name doesnt exist, create a new property, default value to 1
//       IF property name exists already, increment  value
// END

// ITERATE voteCount
//   ITERATE position
//     ITERATE names
//       FIND Largest value within the object
//       TAKE the key and assign it to value of position in officers
// END

// __________________________________________
// Initial Solution

for (var name in votes) {
 for (var position in votes[name]) {
   if (voteCount[position][votes[name][position]] === undefined) {
    voteCount[position][votes[name][position]]  = 0;
  }
  voteCount[position][votes[name][position]]+=1;
}
}
for (var pos in voteCount) {
  var max = 0;
  for (var person in voteCount[pos] ) {
    if (voteCount[pos][person] > max) {
      officers[pos] = person;
      max = voteCount[pos][person];
    }
  }
}

// __________________________________________
// Refactored Solution

for (var voter_name in votes) {//Iterate through Object "votes"
   for (var office_position in votes[voter_name]) { //Iterate through the first property of votes, or votes[name]
     if (voteCount[office_position][votes[voter_name][office_position]] === undefined) {//if object voteCount with key of [position] is underfined
        voteCount[office_position][votes[voter_name][office_position]]  = 0;//Set the value of that property to 0 instead of undefined.
      }
     voteCount[office_position][votes[voter_name][office_position]] += 1;//Add 1 to the value of property with vote receiver' name within voteCount
    }//Go to the next position of the ballot
}//Move on to the name voter
for (var pos in voteCount) {//Iterate through voteCount, which consists of 4 objects, each represent a position.
  var max = 0; //Set a maximum vote counter
  for (var person in voteCount[pos] ) { //Iterate through each of the positions in voteCount.
      if (voteCount[pos][person] > max) { //If the vote received by the person with that position is greater max
        officers[pos] = person; // add that person (NAME OF THE PERSON) to the object officers as the value to pos property
        max = voteCount[pos][person]; //set max to the votes received by that person.
      }
    }
  }





// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//   I learned how to use the (property_name_placeholder in object) syntax to iterate through JavaScript. Also on how to use bracket notation to access nested objects.
// Were you able to find useful methods to help you with this?
//   No, unfortunately we weren't able to incorporate methods in our code.

// What concepts were solidified in the process of working through this challenge?
//   Definitely learned a lot about how to iterate through objects and setting values within a nested object to another nested object.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)