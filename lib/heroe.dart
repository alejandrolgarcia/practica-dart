// Herencia

abstract class Personaje {
  String poder;
  String nombre;
}

// Declaración de una clase
class Heroe extends Personaje {

  // Propiedades
  // String nombre;
  // String poder;

  // Constructor tradicional
  // Heroe({ String nombre = 'Sin nombre', String poder = 'Sin poder' }){
  //   this.nombre = nombre;
  //   this.poder  = poder;
  // }

  // Constructor
  Heroe({ nombre, poder });

  // Sobreescribir el metodo de impresión
  String toString() => 'nombre: $nombre , poder: $poder';

}

class Villano extends Personaje {
  int maldad;
}