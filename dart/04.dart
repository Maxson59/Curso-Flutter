// ! SECCION 2: CAP 4

void main(){
  final Map<String, dynamic> pokemon = {
    'nombre': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilitie': <String>['impostor'],
    'sprites':{
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  print(pokemon);
  print("Name: ${pokemon['name']}");
  print("HP: ${pokemon['hp']}");
  print("Front: ${pokemon['sprites'][1]}"); // Corregido aquí
  print("Back: ${pokemon['sprites'][2]}"); // Corregido aquí

}