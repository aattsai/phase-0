// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:
// Pseudocode
// Input: An integer
// Output: A string separated with commas at every third number.
// Step 1: Define a function that takes an integer as an input
// Step 2: Convert the integer to a string
// Step 3: Reverse the order of the string
// Step 4: Iterate over the string and add a comma to every third character
// Step 5: Reverse it back and return the string with commas


// Initial Solution

function separateComma(num) {
  num = num.toString();
  var commanum = "";
  var reverse ="";
  var finalnum = "";
  var finalfinal = "";
  for (var j = num.length-1 ; j>-1 ; j--) {
    reverse += num[j];
  }
  console.log(reverse);
  for (var i = 0 ; i < num.length ; i++) {
    commanum += reverse[i];

    if ((i - 2) % 3 === 0) {
      commanum += ",";
    }
  }

  for (var j = commanum.length-1 ; j > -1 ; j--) {
    finalnum += commanum[j];
  }

  if (finalnum[0]% 1 != 0) {
    for (var i = 1; i < finalnum.length ; i++) {
      finalfinal += finalnum[i];
    }
    console.log(finalfinal)
  }
  else {
    console.log(finalnum);
  }

}

separateComma(123456);

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
  console.log(reverse);
  for (var i = 0 ; i < num.length ; i++) {
    commanum += reverse[i];

    if ((i - 2) % 3 === 0) {
      commanum += ",";
    }
  }

  for (var j = commanum.length-1 ; j > -1 ; j--) {
    finalnum += commanum[j];
  }

  if (isNaN(finalnum[0])) {
    for (var i = 1; i < finalnum.length ; i++) {
      finalfinal += finalnum[i];
    }
    console.log(finalfinal)
  }
  else {
    console.log(finalnum);
  }

}

separateComma(123456);



// Your Own Tests (OPTIONAL)




// Reflection