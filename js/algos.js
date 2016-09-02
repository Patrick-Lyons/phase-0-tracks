//~~RELEASE 0~~\\
//define function with a single argument (an array to be passed in)
//find the number of items in the array
//have each indexed item "battle eachother", by comparing the lengths
//save the winner of each "battle", till all items have been compared
//the logic is that the longest phrase always moves on
//issue: what if they are tied?

function phrase(array) {

	//console.log(array.length);
	var set = array.length-1;
	var longest = null;
	//console.log("Original Set is: " + set)

	for (var count = array.length-1; count >= 0; count--) {
		
		//console.log("~~~ ~~~ Round " + count + "! Fight! ~~~ ~~~")
		
		if (count > 0) {
			if (array[set].length > array[count-1].length) {
				//console.log("is " + array[set] + " bigger than " + array[count-1] + "?")
				longest = array[set];
				//console.log("Winner: " + longest);
			}
			
			else {
				set = count-1;
				longest = array[set]
				//console.log("Set is: " + set)
				//console.log("New champion is " + longest);
			}
		}
		
		else {
			//console.log("Final Set is: " + set)
			longest = array[set];
			console.log(longest);
		}
	}
}
	
//phrase(["long color", "green", "yellow", "test", "the longest one of them all", "purpleish", "red", "even longer color"]);

phrase(["abcdefghi", "a", "ab", "abc", "abcdefgh", "abcd", "abcde", "abcdef", "abcdefg"])

//phrase(["test"])

//var array = ["a", "ab", "abc", "abcd"]
//var set = array.length-1
//console.log(set)
//console.log(array[1])
//console.log(array[1].length)
//console.log(array[set].length)

//Closing comment on Release 0: i found a working solution through a lot of experimentation, but to be honest it is hard for me to hold the entire process's logic in my head. I have to write this out to explain it.
//I picture this all as "force every item in the index to figth and carry the winner through every fight till every item has fought". "Once every item has fought OR there is no other items to fight, the standing champion is the longest phrase".
//Written out code loop for the array with letters:
//Round 8, is item 8 bigger than item 7? Y, longest is item 8.
//Round 7, is item 8 bigger than item 6? Y, longest is item 8.
//Round 6, is item 8 bigger than item 5? Y, longest is item 8.
//Round 5, is item 8 bigger than item 4? N, longest is item 4.
//Round 4, is item 4 bigger than item 3? Y, longest is item 4.
//Round 3, is item 4 bigger than item 2? Y, longest is item 4.
//Round 2, is item 4 bigger than item 1? Y, longest is item 4.
//Round 1, is item 4 bigger than item 0? N, longest is item 0.
//Round 0, no more items left, longest item is 0.

//~~RELEASE 1~~\\
//Define a function that takes two arguments, the two objects.
//Pull the propertie - value result from one object and check it there is a match in the other obhject.
//If any matches found, return "true".

function pair(obj1, obj2) {
	var tester = []
	for (var prop in obj1) {
			if (obj1[prop] === obj2[prop]) {
				tester.push(prop)
			}
	}
	if (tester.length > 0) {
		console.log("true")
	}
	else {
		console.log("false")
	}
}

pair({name: "Patrick", age: 25}, {name: "Nhi", age: 34})
pair({
	animal: "bear",
	fur: "yes",
	predator: true
},
{
		animal: "killer whale",
	fur: "no",
	predator: true
}
)

//~~RELEASE 2~~\\
//Define a function that takes one parameter, an integer
//As many times as the integer, create a string of random letters
//Creat an array to store the strings
//Print to console the array

function gibberish(int) {

	var gib_array = []
	var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]

	for (count = 0; count < int; count++) {
		gib_array[count] = letters[Math.floor((Math.random() * 10) + 1)]
		var word_length = Math.floor((Math.random() * 10))

		for (count2 = 0; count2 < word_length; count2++) {
			gib_array[count] = gib_array[count] + letters[Math.floor((Math.random() * 10) + 1)]
		}
	}
	console.log(gib_array)
	return gib_array	
}

phrase(gibberish(10))

//console.log("~~~ THE TEST BEGINS NOW ~~~")
//function test() {
//	for (count = 0; count <= 1000; count++) {
//		console.log(Math.floor(Math.random() * 10))
//	}
//}
//	
//test()