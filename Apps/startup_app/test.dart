class Reloj {
  int hora, minuto, segundo;

  Reloj(int hora, int minuto, int segundo){
    this.hora = hora;
    this.minuto = minuto;
    this.segundo = segundo;
  }
}

class punto2D{
  double x, y;

  punto2D(this.x, this.y);

  punto2D.fromJson(Map<String, dynamic> json)
    : x = json['x'], y = json['y'];
}

class Persona{
  String nombre, apellido;

  Persona(this.nombre, this.apellido);

  String nombre_completo() => '$nombre $apellido';

  String toString() => 'Persona($nombre $apellido)';
}


void main() {
  // var a = Reloj(12, 12, 12);
  // print('${a.hora}:${a.minuto}:${a.segundo}');

  // var p1 = punto2D(0, 0);
  // print('(${p1.x}, ${p1.y})');

  // var p2 = punto2D.fromJson({'x' : 0.2, 'y' : 0.0});
  // print('(${p2.x}, ${p2.y})');
  var p = Persona('Jose', 'Xixarra');
  print(p.nombre_completo());
  print(p);
}