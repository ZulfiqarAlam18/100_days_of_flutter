void checkPalindrome(String str){

  String original = str;

  String reversed = '';

  for (int i = str.length -1; i>=0;i --){

    reversed = reversed + original[i];

  }


  if (original == reversed){


    print('${str} is a palindrome');


  }
  else {

    print('not');

  }
  





}

void main(){


  checkPalindrome('madam');

}