
void fibo(int limit){


  int a = 0;
  int b = 1;

  int temp;

  for (int i = 0; i < limit ; i++){

    print(a);

    temp = a + b;
      a = b;

      b = temp;


    



  }



}

void main(){


  fibo(10);

}