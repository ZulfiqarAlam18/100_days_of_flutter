void main(){


  swapWithTemp(50, 30);
  swapWithoutTemp(50, 30);


}

void swapWithTemp(int a , int b){

  int temp = 0;

  print('Before Swaping');
  print('-------------------------');
  print('value of a is $a');
  print('value of b is : $b');

  temp = a;
  a = b;
  b = temp;


  print('After Swaping');
  print('--------------------');
  print('value of a is $a');
  print('value of b is : $b');

}

void swapWithoutTemp(int a , int b){

 // int temp = 0;

  print('Before Swaping');
  print('------------');
  print('value of a is $a');
  print('value of b is : $b');
  // a = 200 b = 5
  a = a + b ; // result 205
  b = a - b;  // result 200
  a = a - b;  // 5

  print('After Swaping');
  print('------------');
  print('value of a is $a');
  print('value of b is : $b');

}