import 'dart:math';


// A Function that takes two parameter and return their sum
int sum(int a, int b) {
  return a + b;
}

// Function that calculate the factorial of a given number
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

// Function that checks is a number is a prime
bool isPrime(int number) {
  if (number <= 1) {return false;
  } else {
    return true;
  }}


// Function that converts Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// A function that reverse a string
class StringManipulator {
  static String reverseString(String inputString) {
    List<String> characters = inputString.split('');
    characters = characters.reversed.toList();
    return characters.join('');
  }
}

//A Class named Person
class Person {
  String name;
  int age;

  Person(this.name, this.age);

//Method
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

// A Class named  Rectangle
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

//Method
  double calculateArea() {
    return length * width;
  }
}

// A Class named Cirle

class Circle {
  double radius;

  Circle(this.radius);

//Method
  double calculateCircumference() {
    return 2 * pi * radius;
  }
}


//A Class named Bank Account
class BankAccount {
  double balance;

  BankAccount(this.balance);

//Method
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: $amount units");
    } else {
      print("deposit amount is invalid");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount units");
    } else {
      print("insufficient funds");
    }
  }

  void checkBalance() {
    print("Account Balance: $balance units");
  }
}


//A Class named Student
class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

//Method
  bool isPassed() {
    return grade >= 50.0;
  }
}


// A Class named Calculator
class Calculator {
  double sum(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print("Error: Division by zero");
      return double.nan;
    }
  }
}


// A Class named Car
class Car {
  bool _isStarted = false;
  double _fuelLevel = 0.0; // The level of Fuel in liters

//Method
  void start() {
    if (!_isStarted) {
      _isStarted = true;
      print("Car started");
    } else {
      print("Car is already started");
    }
  }

  void stop() {
    if (_isStarted) {
      _isStarted = false;
      print("Car stopped");
    } else {
      print("Car is already stopped");
    }
  }

  void checkFuelLevel() {
    print("Fuel level: $_fuelLevel liters");
  }

  void refuel(double amount) {
    if (amount > 0) {
      _fuelLevel += amount;
      print("Refueled: $amount liters");
    } else {
      print("Invalid fuel amount");
    }
  }
}


// A Function that finds the Maximum element in alist of integer
int findMaxElement(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List is empty");
  }

  int maxElement = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxElement) {
      maxElement = numbers[i];
    }
  }

  return maxElement;
}

// A Class Employee
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

//Method
  void giveBonus(double bonusAmount) {
    if (bonusAmount > 0) {
      salary += bonusAmount;
      print("$name received a bonus of $bonusAmount");
    } else {
      print("Invalid bonus amount");
    }
  }
}


// A Function and Class that calculates the area of a Triangle
class Triangle {
  double base;
  double height;

  Triangle(this.base, this.height);

//Method
  double calculateArea() {
    return 0.5 * base * height;
  }
}

double calculateTriangleArea(double base, double height) {
  Triangle triangle = Triangle(base, height);
  return triangle.calculateArea();
}


// A Function that finds a Square root oa a number

double findSquareRoot(double number) {
  return sqrt(number);
}


// Function that generates a fibonacci numbers up to a specific limit
List<int> generateFibonacciNumbers(int limit) {
  List<int> fibonacciNumbers = [];

  int a = 0, b = 1;
  while (a <= limit) {
    fibonacciNumbers.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  return fibonacciNumbers;
}

// A Function tha determine a leap year
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true; // If the year is divisible by 400, it is a leap year
      } else {
        return false; // If the year is divisible by 100 but not by 400, it is not a leap year
      }
    } else {
      return true; // If the year is divisible by 4 but not by 100, it is a leap year
    }
  } else {
    return false; // If the year is not divisible by 4, it is not a leap year
  }
}


// Recursive function that compute a factorial number
int factorials(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}


// A function that returns a list of integers with even numbers only
List<int> getEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];

  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  return evenNumbers;
}

void main() {

  // No 1
  int result = sum(18, 20);
  print("The sum is $result");

  //No  2
  int number = 5;
  int output = factorial(number);
  print("The factorial of $number is $output");

  //No  3
  int num1 = 27;
  print("$num1 is ${isPrime(num1) ? 'a prime' : 'not a prime' } number");


  //No 4
  double celsiusTemperature = 70.0;
  double fahrenheitTemperature = celsiusToFahrenheit(celsiusTemperature);
  print("$celsiusTemperature°C is $fahrenheitTemperature°F in Fahreheit");


  //No 5
  String originalString = "Thank, God";
  String reversedString = StringManipulator.reverseString(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString");


  //No 6
  Person person1 = Person("Goodnews", 18);
  person1.displayInfo();


  // No  7
  Rectangle rectangle = Rectangle(15.0, 10.0);
  double area = rectangle.calculateArea();
  print("The Area of the rectangle is $area square units"); 


  // No 8 
  Circle circle = Circle(25.0);
  double circumference = circle.calculateCircumference();
  print("The Circumference of the circle is $circumference units"); 


  // No 9
  BankAccount account = BankAccount(100000.0);

  account.checkBalance(); 

  account.deposit(34000.0); 
  account.checkBalance(); 

  account.withdraw(10000.0); 
  account.checkBalance(); 

  account.withdraw(50000.0);
  account.checkBalance();


  // No 10
  Student student1 = Student("Goodnews", 20, 95.0);
  print("${student1.name} ${student1.isPassed() ? 'passed' : 'failed'}");


  //No 11
  Calculator calculator = Calculator();

  double resultAdd = calculator.sum(10.0, 30.0);
  print("Addition: $resultAdd"); 

  double resultSubtract = calculator.subtract(45.0, 20.0);
  print("Subtraction: $resultSubtract");

  double resultMultiply = calculator.multiply(7.0, 5.0);
  print("Multiplication: $resultMultiply");


// No 12
Car car = Car();

car.start(); 
car.checkFuelLevel();

car.refuel(50.0); 
car.checkFuelLevel();

car.stop();


//No 13
List<int> numbers = [10, 7, 2, 8, 9, 5];
int max = findMaxElement(numbers);
print("Maximum element in the list: $max");


//No  14
Employee employee = Employee("Walter Goodnews", 50000000.0);
print("Original salary of ${employee.name} is ${employee.salary}"); 

employee.giveBonus(6000.0); 
print("The New salary of ${employee.name} is ${employee.salary}"); 


//No 15
double base = 6.0;
double height = 8.0;
double areas = calculateTriangleArea(base, height);
print("Area of the triangle with base $base and height $height is $areas square units");


//No 16
double num2 = 25.0;
double squareRoot = findSquareRoot(num2);
print("The Square root of $num2 is $squareRoot"); 


//No 17
 int limit = 10;
 List<int> fibonacciList = generateFibonacciNumbers(limit);
 print("Fibonacci numbers up to $limit is $fibonacciList");


 //No 18
 int year1 = 2020;
  print("$year1 is ${isLeapYear(year1) ? 'a leap' : 'not a leap'} year"); 

  int year2 = 2021;
  print("$year2 is ${isLeapYear(year2) ? 'a leap' : 'not a leap'} year"); 


  //No 19
  int nums = 15;
  int results = factorial(nums);
  print("The Factorial of $nums is $results"); 


  //No 20
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<int> evenNumbers = getEvenNumbers(num);
  print("Original list: $num");
  print("Even numbers: $evenNumbers");
}