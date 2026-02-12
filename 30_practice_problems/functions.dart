void main() {
  f1('Zulfiqar');
  print('---------------------');
  f2('Alam');
  print('---------------------');

  f3('Zulfiqar', 21);
  print('---------------------');

  f4('Zulfiqar');
  print('---------------------');

  f5();
  print('---------------------');

  f6(name: 'Zulfiqar', age: 21);
  print('---------------------');

  f7(name: 'Zulfiqar Alam Jamali',);

//  int result = sum(10, 10);
}

void f1(String name) {
  print(name);
}

void f2(String? name) {
  print(name ?? 'no name provided');
}

void f3(String name, int? age) {
  print(name);
  print(age ?? 'no age provided');
}

void f4(String name, [int? age]) {
  print(name);
  print(age ?? 'no age provided');
}

void f5({String? name, int? age}) {
  print(name ?? 'no name provided');
  print(age ?? 'no age provided');
}

void f6({required String name, required int age}) {
  print(name);
  print(age);
}

void f7({required String name, int? age}) {
  print(name);
  print(age ?? "no age provided");
}

void sum(int a , int b) => a+b;
