// Getters y Setters

class Cuadrado {

  double _lado;
  // double _area;

  set lado( double value ){
    if( value <= 0 ){
      throw('El lado no puede ser menor o igual a 0');
    }
    _lado = value;
  }

  toString() => 'Lado: $_lado';

  double get area {
    return _lado * _lado;
  }

}
