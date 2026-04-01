void main(){

  /*
  Assignment
Write Program to Add Two Integers and store their sum in the third variable.
Write Program to Add Two Integers.
Write Program to Multiply two Floating Point Numbers.
Write Program to perform all arithmetic operations.
Write Program to Swap Values of Two Variables
Write Program to convert feet to metres and metres into KM.
Write Program to convert celcius to farenheit 
Write Program to convert Fahrenheit to Celsius.
Write Program to find the Size of data types.
Write Program to Calculate Area of Circle. 
Write Program to Calculate Area of Square.
Write Program to Calculate Area of Rectangle.
Write Program to convert days to years, weeks and days

*/

// question 1
  double c = -40;

  double f;

  f = (1.8 * c) + 32;

  // c = (f - 32) / 1.8

  print(f);

// question 2 area of circle

double raduis = 5;

double result = raduis*raduis*3.14;

print('Area of circle with raduis $raduis is $result');

// question 3 -> days into years , months and days

int days = 50001;

int years = days ~/ 365;

int remainingDays = days % 365;

int months = remainingDays ~/ 30;

int finalDays = remainingDays % 30;


print('50000 days contain $years years , $months months , $finalDays days');









}