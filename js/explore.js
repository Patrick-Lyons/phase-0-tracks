//Give the function a name, and it will take one argument (the string)
//Create a variable matching the length of the string minus one (index starts at 0)
//Take the variable and count down in a loop, adding the indexed items to a variable

function reverse(str) {
	var new_word = ""
	for (var count = str.length-1; count >= 0; count--) {
		new_word = new_word + (str[count]);
	}
	console.log(new_word);
	return new_word;

}

reverse("Abraham Lincoln");
var x = reverse("New York");
if (x.length > 2) {
	console.log(x);
}
