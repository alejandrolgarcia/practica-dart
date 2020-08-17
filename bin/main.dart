import 'dart:convert';
import 'package:practica/animal.dart';
import 'package:practica/heroe.dart';
import 'package:practica/antiheroe.dart';
import 'package:practica/cuadrado.dart';
import 'package:practica/zoo.dart';

void main() {

  print('hola Mundo');

  // Interpolación de String
  String nombre = 'Dercy';
  print('Hola ${ nombre }');
  
  // Tipos de Datos
  
  // Números
  int empleados = 10;
  double pi = 3.1415;

  print('$empleados - $pi ');

  // String - Cadena de caracteres
  String apellido = 'García';

  print( apellido );
  print( apellido[0] );
  print( apellido[ apellido.length - 1 ] );

  // Booleanos y Condiciones

  bool activado = true;
  print( activado );

  activado = !activado; // Negación

  if ( activado ) {
    print('El motor está funcionando');
  } else {
    print('Está apagado');
  }

  // Tipo de dato Lista

  // Definición
  List<int> numeros = [1, 2, 3, 4, 5];
  print( numeros );

  // Agregar elementos al List
  numeros.add( 6 );
  print( numeros );

  // Lista de tamaño fijo
  List masNumeros = List(10);
  print( masNumeros );
  masNumeros[1] = 1;
  print( masNumeros );

  // Tipo de dato MAP

  // Definición
  Map<String, dynamic> persona = {
    'nombre':  'Alejandro',
    'edad':    30,
    'soltero': true
  };

  print( persona['nombre'] );
  print( persona['edad'] );
  print( persona['soltero'] );

  Map<int, String> personas = {
    1: 'Bruce',
    2: 'Diana',
    9: 'Alfred'
  };

  // Agregar nueva persona
  personas.addAll( {3: 'Barry'} );
  print( personas );

  // Funciones
  // Llamar funcion
  String mensaje = saludar2(
    texto: 'Hola',
    nombre: 'Alejandro'
  );
  print( mensaje );

  // Clases
  // Instancia de una clase
  final wolverine = new Heroe(
    nombre: 'Superman',
    poder: 'Superfuerza'
  );
  print( wolverine );

    // Constructores con nombre
  final rawJson   = '{ "nombre": "Harley", "poder": "Pinche Loca" }';
  Map parsedJson = json.decode( rawJson );
  // print( parseJson );

  final harley = new Antiheroe.fromJson(parsedJson);
  print(harley.nombre);
  print(harley.poder);

  // Getters y Setters
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado);
  print('Área: ${ cuadrado.area }');

  // Clases abstractas
  final perro = new Perro();
  perro.emitirSonido();

  // Extends
  final luthor = new Villano();
  luthor.nombre = 'Solomon Grondy';

  // Mixins
  final pato = new Pato();
  pato.volar();

  final pezVolador = new PezVolaror();
  pezVolador.nadar();

}

// Función saludar retorna un string
String saludar({ String texto, String nombre }) {
  // print('Hola Funciones');
  return '$texto $nombre';
}

// Función de flecha
String saludar2({ String texto, String nombre }) => '$texto $nombre';
