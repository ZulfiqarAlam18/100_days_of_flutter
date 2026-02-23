void main() {
  String para =
      "Zulfiqar Alam Jamali, A recent graduate from the dept of software Eng. Muet, I am A flutter Developer,and Also A cricketor";

  print(wordCount(para));
  print(anyWordCount(para, 'A'));
}

int wordCount(String str) {
  int result = 0;

  for (int i = 0; i < str.length - 1; i++) {
    if (str[i] == ' ') {
      result++;
    }
  }

  return result + 1;
}


int anyWordCount(String str,String target) {
  int result = 0;
  String temp = "";

  for (int i = 0; i < str.length - 1; i++) {
    if (str[i] != ' ') {

      temp += str[i];

     

    }
    else {

       if (temp == target){

        result++ ;


      }


      temp = "";


    }
  }

  return result ;
}


