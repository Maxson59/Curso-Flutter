abstract class Animal(){

}

abstract class Mamifero extends Animal(){

}
abstract class Ave extends Animal(){

}
abstract class Pez extends Animal(){

}

mixin Volador{
  void volar() => print('Estoy volando');
}
mixin Caminante{
  void volar() => print('Estoy caminando');
}
mixin Nadador{
  void volar() => print('Estoy nadando');
}


class Delfin extends Mamifero with Nadador{

}
class Murcielago extends Mamifero with Volador, Caminante{}

