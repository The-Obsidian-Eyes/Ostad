// A
abstract class Vehicle {
  int _speed = 0;
  void move() {}
  void setSpeed(int speed) => this._speed = speed;
}

// B
class Car extends Vehicle{
  @override
  void move(){
    print("The car is moving at $_speed km/h");
  }

  // C
  int get speed => _speed;
  set speed(int speed) => _speed = speed;
}

// D
main() {
  Car car = Car();
  // car.speed = 50;
  car.setSpeed(50);
  car.move();
}
