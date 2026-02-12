void main(){



  String str = 'Hello , Zulfiqar, How are you and what are you doing these days,are';


  String check1 = 'a';
  //String check2=  'are';

  int count1 = 0;


  // task1 
  for(int i  = 0; i< str.length ; i++){


    if (str[i] ==  check1){

      count1++;


    }


  }

  print('Count of $check1 is : $count1');


  // task2

  String check2 = 'are';

  int count2 = 0;

  for(int i = 0; i <= str.length - check2.length; i++){

    if (str.substring(i, i + check2.length) == check2){

      count2++;

    }

  }

  print('Count of "$check2" is : $count2');

}