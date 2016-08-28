var colors = ["blue", "red", "green", "yellow"];
var names = ["Secretariat", "Spirit", "Ed", "Hidalgo"];
colors.push("magenta");
names.push("Socks");

// console.log(colors)
// console.log(names)

var new_horses ={};
for (var i = colors.length-1; i >= 0; i--) {
  new_horses[names[i]]=colors[i];
}

console.log(new_horses);


function Car(make, seats, american){
  this.make = make;
  this.seats = seats;
  this.american = american;

  this.rev_engine = function(){
    if (american==true){
      console.log("VROOOOOOOM!");
    }
    else{
      console.log("vroom");
    }
  }
console.log(this)  
this.rev_engine()
}

var new_car = new Car('Ford',5,true);
// console.log(new_car);
// new_car.rev_engine();

var another_car = new Car('Toyota',2,false);
// another_car.rev_engine();