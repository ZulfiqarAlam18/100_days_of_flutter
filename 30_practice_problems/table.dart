void main(){


  table(num: 10);


}


void table({required int num}){


  for (int i = 1; i<= 10; i++){

    int result = i*num;
    print("$i * $num = $result");


  }



}