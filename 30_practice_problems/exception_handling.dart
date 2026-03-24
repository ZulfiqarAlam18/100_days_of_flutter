void main(){


  divide(10, 0);




}

void divide(int n1, int n2){



   try {

   double result1 = n1 / n2;
   int result2 = n1 ~/ n2;

    print("Result 1: $result1");
    print("Result 2: $result2"  );

   }

   catch(e){


    print(e);



   }  




}