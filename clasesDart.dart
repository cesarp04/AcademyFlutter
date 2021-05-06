abstract class Animal{}

abstract class Mammal extends Animal{}
abstract class Bird extends Animal{}
abstract class Fish extends Animal{}

class Dolphin extends Mammal with SwimMixin{}
class Bat extends Mammal with WalkMixin, FlyMixin{}
class Cat extends Mammal with WalkMixin{}

class Dove extends Bird with FlyMixin{}
class Duck extends Bird with WalkMixin{}

class Shark extends Fish with SwimMixin{}
class FliyingFish extends Fish with SwimMixin{}

mixin WalkMixin{
   void walk( String text ) => print( "walk ${text}");
  
  void velocity()=> print( "is very fast");
}

  
mixin SwimMixin{
   void swim( String text ) => print( "swim ${text}");
  

}
  
mixin FlyMixin{
   void fly( String text ) => print( "fly ${text}");
  
}

void main(){


  Dolphin newDolphin = new Dolphin();
  newDolphin.swim("Norberto");
  
  Cat newCat = new Cat();
  newCat.walk("inari");
  newCat.velocity();
  
  Bat newBat = new Bat();
  newBat.fly('ricardo');
  

}