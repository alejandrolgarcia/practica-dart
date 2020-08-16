// Constructores con nombre
class Antiheroe{

  String nombre;
  String poder;

  Antiheroe( this.nombre, this.poder );

  Antiheroe.fromJson( Map parsedJson ){
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
  }

}