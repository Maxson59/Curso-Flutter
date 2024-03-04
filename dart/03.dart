// ! SECCIÓN 2: CAP 3

void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool? isAlive = true;
  final List<String> abilities = ['impostor'];

  // * dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = 123;
  errorMessage = [1, 2, 3];
  errorMessage = {1:2, 2:3, 3:3};

  print(
    """
    $pokemon
    $hp
    $isAlive
    $abilities
    """
  );
}