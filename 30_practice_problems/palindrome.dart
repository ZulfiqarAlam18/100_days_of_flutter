void main(){

  checkNumberPalindrome(12321);
  checkStringPalindrome('madam');


}

void checkNumberPalindrome(int number){

  int originalNumber = number;

  int reversedNumber = 0;

  while (number > 0){

    int lastDigit = number % 10;

    reversedNumber = (reversedNumber * 10) + lastDigit;

    number = number ~/ 10;

  }

  if (originalNumber == reversedNumber){
    print('$originalNumber is a palindrome');
  } else {
    print('$originalNumber is not a palindrome');
  }

}

void checkStringPalindrome(String str){

  String originalString = str;

  String reversedString = '';

  for (int i = str.length - 1; i >= 0; i--){
    reversedString = reversedString + str[i];
  }

  if (originalString == reversedString){
    print('$originalString is a palindrome');
  } else {
    print('$originalString is not a palindrome');
  }

}