
abstract class Fruta{ //Clase abstarcat no tiene que tener todas las variables definidas.
  String nombre;
  Fruta(this.nombre); //Constructor

  bool get femenina;
  double get gramos;

  void come(){
    // var det;
    // if (femenina) {
    //   det = "una";
    // }else {
    //   det = "un";
    // }
    var det = (femenina ? "una" : "un");

    print("Te acabas de comer $det $nombre ($gramos g.)");
  }
}

class Manzana extends Fruta{ //Clase extendidada
  Manzana() : super("manzana");
  bool get femenina => true;
  double get gramos => 250;
}

class Melon extends Fruta{ //Clase extendidada: clase derivada Melon, clase base/super clase Fruta.
  Melon() :  super("Melon"); //super para llamar al constructor de la super clase.
  bool get femenina => false;
  double get gramos => 1500;

  //Sobrecarga del metodo come
  void come(){
    print("Vamos a abrir el melón primero");
    super.come();
  }
}

class Arandano extends Fruta{
  Arandano() : super("Arandano");
  bool get femenina => false;
  double get gramos => 34;
}

void come_frutas(){
  // var manzana =  Manzana();
  // manzana.come();
  // var melon = Melon();
  // melon.come();

  var frutas = [
    for (int i = 0; i < 3; i ++) Manzana(),
    Melon(),
    for (int i = 0; i < 10; i ++) Arandano(),
  ];
  frutas.shuffle();
  
  for (var f in frutas) {
    f.come(); //Clasico bucle POLIMORFICO: ejectuo un metodo de objetos de tipos distinos, cada uno hace lo que le toca.
  }
}

//Mixins: No todos los lenguajes tiene mixins.

abstract class Animal {
  String nombre;
  Animal(this.nombre);
}

//Lista de campos o metodos, no tiene constructor [Trozo de una clase]
mixin PosicinoMixin {
  num _x = 0, _y = 0;

  num get x => _x;
  num get y => _y;

  set x(num x) => _x = x;
  set y(num y) => _y = y;

  List<num> get pos => [_x, _y];

  void mueve(int dx, int dy){
    _x += dx;
    _y += dy;
  }

}

class Leon extends Animal with PosicinoMixin {
  Leon() : super("Leon");
}

void main() {
  var leon = Leon();
  leon.mueve(5, 3);
  leon.mueve(1, 3);
  print(leon.pos);
}