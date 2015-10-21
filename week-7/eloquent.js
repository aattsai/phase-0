//Introduction (Links to an external site.)
//Did you learn anything new about JavaScript or programming in general?
// I learned that Javascript has almost nothing to do with Java.
//Are there any concepts you feel uncomfortable with?
//I wouldn't say I feel uncomfortable. But I can see that
//there will be a lot of time and effort spent on this
//language to master it.

//Ch. 1: Values, Types, and Operators (Links to an external site.)
//Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// The basic operators for arithmetic and comparison syntax
//are very similar.
//Ch. 2: Program Structure (Links to an external site.)
//What is an expression?
//Expression is a fragment of code that produces a value.
//What is the purpose of semicolons in JavaScript? Are they always required?
//Semicolons terminate a statement. They are not always required,
//but is recommended to always keep them .
//What causes a variable to return undefined?
//When ask for the value of an empty variable.
//Write your own variable and do something to it in the eloquent.js file.

var burger = 5, fries = 3;
console.log(burger + fries);

//What does console.log do and when would you use it? What Ruby method(s) is this similar to?
//It puts the value to the screen, kind of like what puts in Ruby does.
//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")


//Describe while and for loops
//While and for loops are a form of control flow that allows
//us to repeat code
//What other similarities or differences between Ruby and JavaScript did you notice in this section?
//The concepts are similar. Javascript requires more parentheses
//and brackets than Javascript
//Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

for (var num = 1; num <101; num++) {
 if (num % 3 == 0 && num % 5 != 0)
   console.log("Fizz");
 else if (num % 3 == 0 && num % 5 == 0 )
    console.log("FizzBuzz");

  else if (num % 5 == 0 && num % 3 != 0)
    console.log("Buzz");
  else
    console.log(num);
}

//Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
//What are the differences between local and global variables in JavaScript?
//Local variables in Javascript are available inside of the
//function they are defined in. Global variables are declared
//outside of any function, and can be accessed from any function
//insdie the program.
//When should you use functions?
//When I need to structure a large program, reduce repetition.
//What is a function declaration?
//var function_name = function() { }
//Complete the minimum exercise in the eloquent.js file.
// Your code here.

function min (num1, num2) {
  if (num1 <= num2)
    return num1;
  else if (num2 < num1)
    return num2;
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


//What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
//using a dot expression, you'd be looking up the maximum
//value store within the array. Where as array["max"],
//you'd be looking up the corresponding index of "max" within
//the array.
//Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

var me = { name: "Aaron ", age: 23, favorite_foods: ["Steak", "Sushi", "Avocado"], quirk: "I owned a bar" };

//What is a JavaScript object with a name and value property similar to in Ruby?
//Hash.
