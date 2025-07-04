// import 'package:course_practice/api_integration/screens/user_screen.dart';
// import 'package:course_practice/getx_navigation/third_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'getx_navigation/home_screen.dart';
// import 'getx_navigation/second_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp( // Use GetMaterialApp instead of MaterialApp
//       debugShowCheckedModeBanner: false,
//       title: 'GetX Navigation Example',
//
//       initialRoute: '/',
//       getPages: [
//         GetPage(name: '/', page: () => const UserScreen()),
//         GetPage(name: '/second', page: () => const SecondScreen()),
//         GetPage(name: '/third', page: () => const ThirdScreen()),
//       ],
//
//
//     );
//   }
//
// }



// learning dart basics

import 'dart:io';

int a = 10;
void square(a){

  print(a*a);

}
void main(){


int a = 10;
int b = 20;

int c = a + b ;
print(c);
  print('hello word');
  square(5);

 // stdout.write('Hello My Dear');
  print('Zulfiqar');

  
  // const , final , static 
  const String name = 'Zulfiqar';
  final String name2 = 'Zulfiqar';
  static String name3 = 'Zulfiqar';
  print(name);
  print(name2);
  print(name3); 
  // var , dynamic
  var name4 = 'Zulfiqar';
  dynamic name5 = 'Zulfiqar';
  print(name4);
  print(name5);
  // int , double , num
  int age = 20;
  double height = 5.9;
  num weight = 70.5;
  print(age);
  print(height);
  print(weight);  

// loops
  for(int i = 0; i < 10; i++){
    print(i);
  }

  int j = 0;
  while(j < 10){
    print(j);
    j++;
  }

  do{
    print(j);
    j++;
  }while(j < 20);

  // if else
  if(age > 18){
    print('You are an adult');
  }else{
    print('You are a minor');
  }
  // switch case
  switch(age){
    case 18:
      print('You are 18');
      break;
    case 20:
      print('You are 20');
      break;
    default:
      print('You are not 18 or 20');    

    


}
