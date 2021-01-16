var fs = require("fs");

var lines = [];
fs.readFile("day8/day8.txt", function(err, data) {
  if (err) throw err;

  lines = data.toString().split("\n");
  var visited = {}; // List of visited indices
  var acc = 0;
  var i = 0
  do {
    var instructions = lines[i].split(" ");
    var inc = eval(instructions[1]); // This is bad don't use IRL
    if (instructions[0] === "acc") {
      acc += inc;
      i++;
    } else if (instructions[0] === "jmp") {
      i += inc;
    } else if (instructions[0] === "nop") {
      i++;
    }
    // console.log(i, lines[i], acc);
    if (visited[i]) {
      break; 
    } else {
      visited[i] = 1;
    }
  } while (true);

  // Part 1
  console.log(acc);
  
  fixed = false;
  var j = 0;
  do {
    // First increment j until it finds a line to change the instruction, do so
    var replaced_instruction1 = false;
    var replaced_instruction2 = false;
    do {
      var toReplace = lines[j].split(" ");
      if (toReplace[0] === "acc") {
        j++;
        continue;
      } else if (toReplace[0] === "jmp") {
        lines[j] = `nop ${toReplace[1]}`;
        replaced_instruction1 = true;
        break;
      } else if (toReplace[0] === "nop") {
        lines[j] = `jmp ${toReplace[1]}`;
        replaced_instruction2 = true;
        break;
      }
    } while(j < (lines.length - 1)); 

    visited = {}; // List of visited indices
    acc = 0;
    done = false;
    i = 0;
    // Next do the same search, return once it completes
    do {
      var instructions = lines[i].split(" ");
      var inc = eval(instructions[1]); // This is bad don't use IRL
      if (instructions[0] === "acc") {
        acc += inc;
        i++;
      } else if (instructions[0] === "jmp") {
        i += inc;
      } else if (instructions[0] === "nop") {
        i++;
      }
      // console.log(i, lines[i], acc);
      if (visited[i]) {
        done = true;
        break;
      } else {
        visited[i] = 1;
      }
    } while (i < (lines.length - 1));

    // If !done is false, then there was no infinite loop, consider the instructions completed
    if (!done) {
      fixed = true;
    } else {
      // Failed to correctly replace, so revert the change and increment
      inc = eval(lines[j].split(" ")[1]);
      // console.log(`\nFailed reverting line ${j} to ${lines[j]}`)
      if (replaced_instruction1) {
        lines[j] = `jmp ${inc}`;
      } else if (replaced_instruction2) {
        lines[j] = `nop ${inc}`;
      }
      j++; 
    }
   
  } while (!fixed && j < lines.length);

  console.log(acc);
});
