// Pseudocode
// Create a new list by declaring a new object.
//
// Add an item with a specified quantity as property to the list object
// Input: Item
// Input: Quanitity
// Output: You have added quantity of item
//
// Remove an item from the list object by implementing delete method.
// Input: item to be removed
// Output: You have removed (item) from the list
//
// Update quantities of items in your list
// Input: Which item would you like to update?
// Input: What quantity?
// Output: You have added quantity of item
//
// Print the list
// Input: none
// Output: Print out list


//Initial solution
  // var list = new Object();

  // function addList(item, quantity) {
  //   list[item] = quantity;
  //   console.log("You have added " + quantity +"  " + item + " to the shopping list");
  // };

  // function removeList(item) {
  //   delete list[item];
  //   console.log("You have deleted " + item + " from the shopping list");
  // };

  // function updateList(item, new_quant) {
  //   list[item] = new_quant;
  //   console.log("You have updated the quantity of " + item + " to " + new_quant);
  // };

  // function printList() {
  //   console.log(list);
  // };

  // addList("Lemonade", 2);
  // addList("Tomatoes",3);
  // addList("Onions", 1);
  // addList("Ice Cream", 4);
  // removeList("Lemonade");
  // updateList("Ice Cream", 1);
  // printList();

  //Refactored

function shoppingList() {
  this.list = {};

  this.addList = function(item, quantity) {
    this.list[item] = quantity;
    console.log("You have added " + quantity +"  " + item + " to the shopping list");
  };
  this.removeList = function(item)  {
    delete this.list[item];
    console.log("You have deleted " + item + " from the shopping list");
  };
  this.updateList = function(item, quantity) {
    this.list[item] = quantity;
    console.log("You have updated the quantity of " + item + " to " + quantity);
  };
  this.printList = function() {
    console.log(this.list);
  };
}

var dinner = new shoppingList();
  dinner.addList("Lemonade", 2);
  dinner.addList("Tomatoes",3);
  dinner.addList("Onions", 1);
  dinner.addList("Ice Cream", 4);
  dinner.removeList("Lemonade");
  dinner.updateList("Ice Cream", 1);
  dinner.printList();


// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
//   In my refactored solution, I tried creating all functions within a
//   main function, thus making them methods. This challenge also helped
//   me solidify the concept in using bracket notation to update a property
//   in object.
// What was the most difficult part of this challenge?
//   For me, initially it was difficult to understand the role keyword "this" plays.
// Did an array or object make more sense to use and why?
//   I think in this example an object makes more sense to use because it can store
//a specific quantiy for each of the items.