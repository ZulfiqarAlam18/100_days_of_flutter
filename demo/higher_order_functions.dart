

void greeting(){

  print('Good Morning Darling');
  print(' How are you doing?');

}

void Demo(void Function() demo){


demo();

}




void main(){



  //Demo(greeting());
  Demo(greeting);
  cal(10, 10, add);


}



// higher order functions


int add(int a, int b){

  return a+b;

}
int multi(int a , int b ){

  return a*b;


}

void cal(int a, int b , int Function(int, int) op){



  print(op(a,b));


}
