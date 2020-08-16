// Declaración de una clase
class Heroe{

  // Propiedades
  String nombre;
  String poder;

  // Constructor tradicional
  // Heroe({ String nombre = 'Sin nombre', String poder = 'Sin poder' }){
  //   this.nombre = nombre;
  //   this.poder  = poder;
  // }

  // Constructor
  Heroe({ this.nombre, this.poder });

  // Sobreescribir el metodo de impresión
  String toString() => 'nombre: $nombre , poder: $poder';

}