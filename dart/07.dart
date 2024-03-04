// ! SECCION 2: CAP 7

void main(){
final Wolverine = new Hero(
  name: 'Logan',
  power: [
    'Regeneración',
    'Garras de metal',
    'Instictos naturales'
  ]
);
  print(Wolverine);
}

class Hero{
  String name;
  List<String> power;

  @override
  String toString(){
    return '$name - $power';
  }
// ! 1da Forma,
  // Hero(String pName, List<String> pPower)
  //   :name = pName,
  //   power = pPower;

// ! 2da Forma,
  // Hero(
  //   this.name,
  //   this.power
  // );
// ! 3ra Forma,
  // Hero({
  //   required this.name,
  //   required this.power
  // });
// ! 4ta Forma,
  Hero({
    required this.name,
    this.power = const ['Sin poder']
  });
}