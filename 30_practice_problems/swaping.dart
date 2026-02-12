void main(){

  swap(10, 20);
  swapWithoutTemp(10, 20);

}


void swap(int a, int b){

  print('Before Swapping : a = $a , b = $b');

  int temp = a;
  a = b;
  b = temp;

  print('After Swapping : a = $a , b = $b');

}

// without using temp variable
void swapWithoutTemp(int a, int b){

  print('Before Swapping : a = $a , b = $b');

  a = a + b; // 30
  b = a - b; // 30 - 20 = 10
  a = a - b; // 30 - 10 = 20

  print('After Swapping : a = $a , b = $b');

}