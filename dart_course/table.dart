void main() {
  //table(num: 10, condition: 'e');

  List <String> list = [];

  table_list(num: 5, condition: 'e',list: list);
  //print(list.toString());
  for(String data in list){

  print(data);

  }


}

void table({required int num,required String condition}) {
  for (int a = 1; a <= 20; a++) {

    if (condition == "e") {
      if (a % 2 == 0) {
        print('${a} * ${num} = ${a * num}');
      }
    } else if (condition == 'o') {
      if (a % 2 != 0) {
        print('${a} * ${num} = ${a * num}');
      }
    }
    else{

      print('Invalid Condition');
      break;

    }
  }
}

List <String> table_list({required int num,required String condition, required List<String> list}) {
  for (int a = 1; a <= 20; a++) {

    if (condition == "e") {
      if (a % 2 == 0) {
        list.add('${a} * ${num} = ${a * num}');
      }
      
    } else if (condition == 'o') {
      if (a % 2 != 0) {
        list.add('${a} * ${num} = ${a * num}');
      }
    }
    else{
        list.add('Invalid Condition');

      break;

    }
  }

  return list;

}
