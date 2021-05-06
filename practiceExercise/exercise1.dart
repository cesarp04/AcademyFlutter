import 'dart:math';

class Punto{
  int _coordenadaX;
  int _coordenadaY;

  Punto(this._coordenadaX,this._coordenadaY);

  String puntoPolares(){
    num radio = pow(this._coordenadaX,2) + pow(this._coordenadaY,2);
    radio = sqrt(radio);

    double theta = this._coordenadaY.toDouble() / this._coordenadaX;
    theta = atan(theta);

    return '($radio,$theta)';
  }

  String puntoCartesiano()=> '($_coordenadaX,$_coordenadaY)';
}

void main(){

  Punto newCoordenada = Punto(4,5);
  print(newCoordenada.puntoPolares());
  print(newCoordenada.puntoCartesiano());

}