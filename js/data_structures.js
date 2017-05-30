// Set up arrays

var colors = ['red','blue','glitter','purple'];

var names = ['Ed','Reina','James','Beauty'];

colors.push('pink');

names.push('Gertrude');

console.log(colors);

console.log(names);


// // Set up the object

horses = {};

for(var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
}

console.log(horses);

//write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.

function Car(color, make, speed) {
	this.color = color;
	this.make = make;
	this.speed = speed;
	this.drive = function(speed, make) { console.log("The " + make + " is driving " + speed + " mph."); };
}

var car = new Car("Red", "Mazda", 100);
var car1 = new Car("Green", "Ford", 35);
var car2 = new Car("Yellow", "Mustang", 50);

console.log(car.color);
car.drive(car.speed, car.make);
car1.drive(car1.speed, car1.make);
car2.drive(car2.speed, car2.make);