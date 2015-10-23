// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kyle Smith
// Pseudocode
// Input: An integer
// Output: A string separated with commas at every third number.
// Step 1: Define a function that takes an integer as an input
// Step 2: Convert the integer to a string
// Step 3: Reverse the order of the string
// Step 4: Iterate over the string and add a comma to every third character
// Step 5: Reverse it back and return the string with commas


// Initial Solution

// function separateComma(num) {
//   num = num.toString();
//   var commanum = "";
//   var reverse ="";
//   var finalnum = "";
//   var finalfinal = "";
//   for (var j = num.length-1 ; j>-1 ; j--) {
//     reverse += num[j];
//   }
//   console.log(reverse);
//   for (var i = 0 ; i < num.length ; i++) {
//     commanum += reverse[i];

//     if ((i - 2) % 3 === 0) {
//       commanum += ",";
//     }
//   }

//   for (var j = commanum.length-1 ; j > -1 ; j--) {
//     finalnum += commanum[j];
//   }

//   if (finalnum[0]% 1 != 0) {
//     for (var i = 1; i < finalnum.length ; i++) {
//       finalfinal += finalnum[i];
//     }
//     console.log(finalfinal)
//   }
//   else {
//     console.log(finalnum);
//   }

// }

// separateComma(123456);

// Refactored Solution

function separateComma(num) {
  num = num.toString();
  var commanum = "";
  var reverse ="";
  var finalnum = "";
  var finalfinal = "";

  for (var j = num.length-1 ; j>-1 ; j--) {
    reverse += num[j];
  }
  //reverse string num
  for (var i in reverse) { //shorthand way to do a for loop
    commanum += reverse[i];
    if ((i - 2) % 3 === 0) {
      commanum += ",";
    }
  };
  //Add , to a new string commanum if the position starting at the third position (i === 2), then 6th position (i ==== 5)

  for (var j = commanum.length-1 ; j > -1 ; j--) {
    finalnum += commanum[j];
  };
  //Reverse the product of comma added string back to original

  if (isNaN(finalnum[0])) { //Check if the first position is a number or a comma, if a comma, then create a new string called finalfinal which iterate through finalnum from the second position (i === 1), omitting the first comma
    for (var i = 1; i < finalnum.length ; i++) {
      finalfinal += finalnum[i];
    };
    console.log(finalfinal)
  }
  else { //If the first position is a number, just print the result out as is.
    console.log(finalnum);
  }

}

separateComma(1234567);
separateComma(12345678);
separateComma(123456789);
separateComma(1234567890);





// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//  -The way we began in breaking down the problem and coming up with pseudocode was the same. One of the biggest difference in approach we had was to implement lots of loops rather than built-in methods.
// What did you learn about iterating over arrays in JavaScript?
//We learned how to use for loops to iterate over arrays in JavaScript.
// What was different about solving this problem in JavaScript?
//There aren't that many built-in methods available to help us solve this problem.
// What built-in methods did you find to incorporate in your refactored solution?
//One built-in method we incorporated was isNaN to check whether the element is a number.
