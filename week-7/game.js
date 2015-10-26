 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: This game is about rescuing hostages in a baracade situation. The player is the squad commander of the elite Hostage Rescue Team (HRT) of the FBI. As the squad commander, it is your responsiblity to select a squad that is best suited for the given situation. The player wins if the squad eliminates all threats and rescues the hostages successfully.
// Overall mission:
// Goals: Eliminate all threats and rescue hostages.
// Characters: Team Leader, Assault Operator, Sniper, Medic
// Objects: 1. Situation that contains number of bad guy, obsticles and wounded hostages
//          2. Squad object that keep track of the squad members chosen for this specific mission.
// Functions: 1. Provide mission briefing based on object situation
//            2. Action that compare squad obect to situation object to determine whether mission is successful or not.

// Pseudocode
// 1. Create an object storing squad member including Team Leader, Assualt Operator, Sniper, and Medic. Set all values to zero initially.
// 2. Create an object storing information regarding to the barricade situation.
// 3. Use if/else statement and method random to generate information.
// 4. Create a funcction to assign the randomly generated information to each properties of object.
// 5. Create an algorithm that calculates the outcome of the mission.
// 6. Print out the result of the mission.

// Initial Code

var squad = {
leader: 0, assualt: 0, sniper: 0, medic: 0
};

var scenario = {
hostage: 0, suspect: 0, wounded: 0
};

function squadAssign (leader, assualt, sniper, medic) {
  squad.leader = leader;
  squad.assualt = assualt;
  squad.sniper = sniper;
  squad.medic = medic;
};

function scenarioAssign (hostage, suspect, wounded) {
  scenario.hostage = hostage;
  scenario.suspect = suspect;
  scenario.wounded = wounded;
};

console.log("   =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
console.log("   || Welcome to HRT - Hostage Rescue Team ||");
console.log("   =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
console.log();
console.log("In this game, you will be a Team Commander who is \nresponsible to assemble a squad to resolve an intensive \nhostage crisis in a barricaded warehouse.");

console.log();
console.log();

var squadtotal = 0;
while (squadtotal < 6) {
  var leader = Math.floor(Math.random()*2);
  var assualt = Math.floor(Math.random()*5);
  var sniper = Math.floor(Math.random()*3);
//  var hacker = Math.floor(Math.random()*2);
  var medic = Math.floor(Math.random()*2);
  squadtotal = leader + assualt + sniper + medic;
};

var scenariototal = 0;
while (scenariototal < 6) {
  var hostage = Math.floor(Math.random()*2);
  var suspect = Math.floor(Math.random()*10+1);
  var wounded = Math.floor(Math.random()*2);
  scenariototal = leader + assualt + sniper + medic;
};

console.log("Your assembled team consists of "+ leader + " Squad Leader,\n" + assualt + " Assualt Operator(s), " + sniper + " Sniper(s), and " + medic + " Medic.");

console.log();

console.log("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
console.log();

console.log("The warehouse is barricaded by " + suspect + " suspects who are \nholding " + hostage + " hostages " + wounded + " of whom is wounded.");

console.log();


squadAssign(leader, assualt, sniper, medic);
scenarioAssign(hostage, suspect, wounded);
console.log(squad);
console.log(scenario);
console.log();

var goodguys = squad.leader*3 + squad.assualt*2 + squad.sniper*3;
var badguys = suspect*2;

//console.log("good= " + goodguys);
//console.log("bad= " + badguys);

if (squad.leader === 0 && scenario.suspect > 1) {
  missionFailed();
  console.log("Your squad has no leadership");
}

else if (squad.medic === 0 && scenario.wounded > 0) {
  missionFailed();
  console.log("No medic, wounded hostage could not be treated");
}

else if ( goodguys > badguys) {
  missionSuccess();
  console.log("You succesfully subdued all suspects and rescued hostages");
}

else if (badguys > goodguys) {
  missionFailed();
  console.log("Your squad was overwhelmed by the suspects");
};


function missionFailed() {
  console.log("MISSION FAILED");
};

function missionSuccess() {
  console.log("MISSION SUCCESSFUL");
};

console.log();
// Refactored Code






// Reflection
// What was the most difficult part of this challenge?
// It was not too difficult to create this MVP version of the game. But I expect a lot of effort later on when I make it into a browser game.
// What did you learn about creating objects and functions that interact with one another?
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//Not yet, I only had time to create the MVP version. I am sure I will be able to implement more built-in methods later on when I improve it.
// How can you access and manipulate properties of objects?
//I assigned the updated value to it by calling the name of object dot key of property.
