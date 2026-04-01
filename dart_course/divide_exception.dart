void main(){


  int num1 = 10;
  int num2 = 0;

 // int result = num1 / num2 ; // getting error

//  double result = num1/num2;  

  print('Debug............');


  try{

    double result2 = num1 / num2;

  }
  catch(e){

    print(e);

  }
  finally {

    print('Debug line .............');

  }

}