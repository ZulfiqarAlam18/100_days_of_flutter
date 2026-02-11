import 'dart:io';

// swap 2 number wtih temp

void swap(int a, int b) {
  int temp;

  temp = a;
  a = b;
  b = a;

  print('value of a is $a  and vlaue of b is $b');
}

// swap 2 number wtih temp

void swapWithoutTemp(int a, int b) {
  //int temp;

  print('value of a is $a  and vlaue of b is $b');
}

// even odd problem
void evenOrOdd(int num) {
  if (num % 2 == 0) {
    print('$num is even');
  } else {
    print("$num is odd");
  }
}

// largest no

void largestNum() {
  String? condition;
  while (true) {
    print('Enter Num1:');
    int num1 = int.parse(stdin.readLineSync()!);
    print('Enter number 2:');
    int num2 = int.parse(stdin.readLineSync()!);
    print('Enter number3:');
    int num3 = int.parse(stdin.readLineSync()!);

    if (num1 > num2 && num2 > num3) {
      print(num1);
    } else if (num1 < num2 && num2 < num3) {
      print(num3);
    } else {
      print(num2);
    }

    print('------------------------');
    print('Continue or press q to break the loop');
    condition = stdin.readLineSync();
  }
}



void largestNumber() {
  while (true) {
    print('Enter Number 1:');
    int num1 = int.parse(stdin.readLineSync()!);

    print('Enter Number 2:');
    int num2 = int.parse(stdin.readLineSync()!);

    print('Enter Numberc3:');
    int num3 = int.parse(stdin.readLineSync()!);

    int largest = num1;

    if (num2 > largest) largest = num2;
    if (num3 > largest) largest = num3;

    print("Largest number is: $largest");

    print('------------------------');
    print('Continue or press q to break the loop');

    String? condition = stdin.readLineSync();

    if (condition != null && condition.toLowerCase() == 'q') {
      break;
    }
  }
}

void main() {
largestNum();


}
