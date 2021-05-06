abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal{}
abstract class Fish extends Animal{}

class Dolphin extends Mammal with SwimMixin{
  @override
  void walk(String text){
    print("walking from class ${text}");
  }
}

class Bat extends Mammal with WalkMixin, SwimMixin,FlyMixin{
  @override
  void walk(String text){
    print("walking from class ${text}");
  }
}

class Cat extends Mammal with WalkMixin{}

class Dove extends Mammal with FlyMixin{}

class Shark extends Mammal with WalkMixin{}

mixin WalkMixin{
  void walk(String text) => print("walking $text");
}

mixin SwimMixin{
  void swim(String text) => print("swiming $text");
}

mixin FlyMixin{
  void fly(String text) => print("flying $text");
}

void main(){
  Dolphin newDolphin = new Dolphin();
  newDolphin.swim("norberto");

  Cat newCat = new Cat();
  newCat.walk("onichan");

  Bat newBat = new Bat();
  newBat.walk("batman");
  newBat.fly("batman");

}