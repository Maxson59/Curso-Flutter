void main() async {
  print('Inicio de la chamba.........');


  try{
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print(value);
  } on Exception{
    print('Tenemos una excepcion');
  }
  catch(err){
      print('Tenemos un error: $err');
  }


  print('Fin de la chamba.........');
}

Future<String> httpGet(StringUrl) async {
  await Future.delayed(const Duration(seconds: 10));
  throw Exception('No hay parametros...');
  return 'Tenemos un valor de peticion';
}