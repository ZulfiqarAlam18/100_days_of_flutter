

class Dog {

    String? name;

    Dog(this.name);

  void about(){

    print("name of my dog is $name");


  }

}

// with generic

class Dogg<T> {

    T name;

    Dogg(this.name);

  void about(){

    print("name of my dog is $name");


  }

}




void main(){

  Dog  dog = Dog('Puppy');

  dog.about(); 

  Dogg<String> dogg = Dogg("Buddy");

  dogg.about();  
 


}