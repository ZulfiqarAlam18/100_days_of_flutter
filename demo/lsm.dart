
import 'dart:io';

// Function to find GCD of two numbers using Euclidean algorithm
int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a.abs();
}

// Function to find GCD of three numbers
int gcdOfThree(int a, int b, int c) {
  return gcd(gcd(a, b), c);
}

// Function to find LCM of two numbers
int lcm(int a, int b) {
  return (a * b).abs() ~/ gcd(a, b);
}

// Function to find LCM of three numbers
int lcmOfThree(int a, int b, int c) {
  return lcm(lcm(a, b), c);
}

void main() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  int c = int.parse(stdin.readLineSync()!);

  int hcf = gcdOfThree(a, b, c);
  int lcmResult = lcmOfThree(a, b, c);

  print("\nHCF (GCD) = $hcf");
  print("LCM = $lcmResult");
}