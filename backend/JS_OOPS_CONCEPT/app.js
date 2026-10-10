// const stu1 ={
//     name:"Ayush",age:25,marks:95,
//     getMarks:function(){
//         return this.marks;
//     },
// };

// const stu2 ={
//     name:"mayank",age:25,marks:90,
//     getMarks: function(){
//         return this.marks;
//     },
// };

// const stu3 ={
//     name:"Arman",age:25,marks:75,
//      getMarks: function(){
//         return this.marks;
//     },
// };

//factory function:
// function PersonMaker(name,age){
//     const person ={
//         name:name,
//         age:age,talk(){
//             console.log('Hi!my name is ${this.name}');
//         },
//     };
//     return person;
// }

// let p1 = personMaker("adam",25);//copy
// let p2 = PersonMaker("eve",25);//copy
 

// //constructor: does not return anything and sart with capital
// function Person(name,age){
//         this.name=name,
//         this.age=age,
// }

// personalbar.prototype.talk = function(){
//     console.log('hi,name is ${this.name}');
// };

// let p1 = new person("adam",25);//new keyword creates the function
// let p2 = new Person("eve",25);


//classes: classes are template for creating objects
// class Person{//like constructor class name also should start from the capital leters
//     constructor(name,age){
//         this.name = name;
//         this.age = age;
//     }
//     talk(){
//         console.log('hi, my name is ${this.name}');
//     }
// }

// let p1 = new Person("adam",25);
// let p2 = new Person("eve",25);


//Inheritance in javascript
// Parent class
class Person {
    constructor(name, age) {
        console.log("Person class constructor called");
        this.name = name;
        this.age = age;
    }
    talk() {
        console.log(`Hi! I am ${this.name}`);
    }
}

// Child class
class Student extends Person {
    constructor(name, age, marks) {
        console.log("Student class constructor called");
        super(name, age);
        this.marks = marks;
    }
}
// Another child class
class Teacher extends Person {
    constructor(name, age, subject) {
        console.log("Teacher class constructor called");
        super(name, age);
        this.subject = subject;
    }
}

// Objects
let stu1 = new Student("Ayush", 20, 95);
let t1 = new Teacher("Rahul", 35, "JavaScript");
console.log(stu1.name);
console.log(stu1.age);
console.log(stu1.marks);
stu1.talk();
console.log(t1.name);
console.log(t1.subject);
t1.talk();