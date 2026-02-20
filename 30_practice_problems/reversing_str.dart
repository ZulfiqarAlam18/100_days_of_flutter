void main() {
  String str = "Hello World Zulfiqar";
  String reversedStr = reverseString(str);
  //print(reversedStr);
  //print(practice(str)); // 'Output: "dlroW olleH"
  //print(reverseStringUsingSplit(str));

  List<String> list = ['Jamil', 'Asad'];

 // print(list.reversed.toString());

  print(demo(str));
}

String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}

String reverseStringUsingSplit(String str) {
  List<String> charList = str.split('');
  List<String> reversedList = charList.reversed.toList();
  return reversedList.join('');
}

String practice(String str) {
  String reversed = "";

  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }

  return reversed;
}

String demo(String str) {
  String reversed = '';

  List<String> list = [];
  String temp = '';

  for (int i = 0; i <= str.length - 1; i++) {
    if (str[i] != ' ') {
      temp += str[i];
    } 
    else{

      list.add(temp);

      temp = '';



    }

  }
  list.add(temp);


  reversed = list.reversed.toString();

  return reversed;
}
