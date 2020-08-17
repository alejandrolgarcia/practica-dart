// Clases abstractas
// Obliga al dev que implemente en una clase las propiedades 
// y metodos de la clase abstracta.

// Definición
abstract class Animal {

  int patas;
  void emitirSonido();

}

class Gato implements Animal {

  int patas;
  int colas;

  void emitirSonido() => print('Miauuu');

}

class Perro implements Animal {
  int patas;
  
  void emitirSonido() => print('Guau Guau');
}