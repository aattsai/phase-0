/*
Gradebook from Names and Scores

I worked on this challenge  with: Deanna
This challenge took me [1] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.


var gradebook = {};
gradebook[students[0]] = {};
gradebook[students[1]] = {};
gradebook[students[2]] = {};
gradebook[students[3]] = {};
gradebook.addScore = function (name, score) {
  this[name].testScores.push(score);
};

gradebook.getAverage = function (name) {
  return average(this[name]);
};

var average = function (array) {
  var averageScore = 0;
  for (var i = 0; i < array.length; i++){
     averageScore += array[i];
  };
  averageScore = averageScore/array.length;
  return averageScore;
};

gradebook[students[0]].testScores = scores[0];
gradebook[students[1]].testScores = scores[1];
gradebook[students[2]].testScores = scores[2];
gradebook[students[3]].testScores = scores[3];


// __________________________________________
// Refactored Solution

var gradebook = {};
for (var i in students) {
  gradebook[students[i]] = {
    testScores: scores[i]
  };
};//Created an object called gradebook and added all elements of array students in the object. Also assign each student property an object that stores a set of scores stored in array scores.

gradebook.addScore = function (name, score) {
  this[name].testScores.push(score);
};//Created a function within gradebook object that accepts a name and adds new score into the array.

gradebook.getAverage = function(name) {
  return average(this[name].testScores);
};

var average = function (array) {
  var averageScore = 0;
  for (var i in array){
     averageScore += array[i];
  };
  return averageScore/array.length;
};

for (var i in students) {
  gradebook[students[i]].testScores = scores[i];
};

// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
//   I learned that when we add functions within objects they are called
//   methods. These methods are useful tools to modify information within the object.
// How did you iterate over nested arrays in JavaScript?
//   We didn't need to iterate over nested arrays in this example, but I guess we could've used multiple for loops to achieve that.
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//   The only methods we used in this challenge was .push, which adds new element in the back of an array.


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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)