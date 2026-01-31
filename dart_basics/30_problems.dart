void main() {
  // factorial using loop

  int result = 1;
  int n = 5;

  for (int i = 1; i <= n; i++) {
   result *= i ;
  }

  print(result);

  // facotrail using recursion

print(fact(6));


// fabonacii using loop 


int num = 8;

int a = 0; int b = 1;

for (int i = 0; i < n ; i ++) {

  print(a);
  int next = a+b;
  a = b;
  b= next;

}





// fabonacii using recursion 




int fib(int n){

  if ( n == 0) return 0;
  if (n == 1) return 1;

  return fib(n-1) + fib(n-2);

}


// palindrome
print(isPalindrome('madam'));

// reverse a string

String name  = "Zulfiqar";

print(name.split('').reversed.join());


// letters in a string 

int countLetters(String s){

return s.replaceAll(' ', '').length;


}
print(countLetters("Zulfi Alam Jamali"));

String demo = "Zulfi Alam Jamali";

print(demo.length);

// counting words in a string
int countWords(String s){


return s.split(RegExp(r'\s+')).length;

}
print(countWords("Zulfi Alam Jamali"));


// counting occurrences of a character in a string

int count = 0;
int countChar(String s, String target){

for (int i =0; i< s.length; i++){

  if (s[i] == target){

    count++;
  }
}
return count;

}

print(countChar("Zulfi Alam Jamali", "a"));

// coutring vowels in a string
int countVowels(String s){

  int count =0;

  for (int i =0; i< s.length; i++){

    if ('aeiouAEIOU'.contains(s[i])){

      count++;
    }
  }
  return count;}


  print(countVowels("Zulfi Alam Jamali"));


  // counting occurences of a word in a string
  int countWordOccurrences(String s, String target){
    List<String> words = s.split(RegExp(r'\s+'));
    
    int count =0;

    for (String word in words){

      if (word == target){

        count++;
      }
    }
    return count;
  }


// expiriment
String s = "Zulfi Alam Jamali";
List<String> words = s.split(RegExp(r'\s+'));
    for(String word in words){

      print(words);


    }


// counting occurences of a word in a string
  int countLetterOccurrences(String s, String target){
    List<String> letters = s.replaceAll(' ', '').split('');
    
    int count =0;

    for (String letter in letters){

      if (letter == target){

        count++;
      }
    }
    return count;
  }

  // db.collection('users').doc('id').set('name':Zulfiqar)
// db.collection('users').snapshots()



  
}

int fact(int n ){

  if (n<=1) {

    return 1;

  }

  return n * fact(n-1);

}


bool isPalindrome(String s){


  return  s == s.split('').reversed.join();



}

