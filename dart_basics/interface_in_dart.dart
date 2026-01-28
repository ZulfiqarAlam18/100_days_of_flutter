

class Animal {


  void run(){}

  void eat(){}



}


class Dog implements Animal {

  @override
  run(){

  print('Dogs are faster than humans');

  }

  @override
  eat(){

    print("Dogs love bones");

  }


}

void main(){


    Dog dog = Dog();

    dog.run();
    dog.eat();


}



// abstract class

abstract class University {

  String name;
  University(this.name);

  void takeAddmion(){

    print("Taking admission in $name University");

  }



}

class MehranUET extends University {

  MehranUET(String name) : super(name);

  @override
  void takeAddmion() {
    print("Taking admission in $name");
  }

}

void main1(){

  MehranUET muet = MehranUET("Mehran UET");   

  muet.takeAddmion();

}