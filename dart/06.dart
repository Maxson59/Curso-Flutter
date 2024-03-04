// ! SECCION 2: CAP 6

void main(){

String greetEveryone() => ('Hello Everyone!');

// String greetSomeone(String name) => 'Hello $name';

// ! 1ra Forma,
// void printNumberPlusNumber(int a, [int? b]){
// * b = b ?? 0;
//   b ??= 0;
//   print('The sum is:${(a + b)}');
// }

void greetSomeone({String name = '...', String message = '...'}) => print('Hello $name, $message');

greetSomeone(name:'Oscar', message: 'Heelllo');

// ! 1da Forma,
void printNumberPlusNumber(int a, [int b = 0]){
  print('The sum is:${(a + b)}');
}


printNumberPlusNumber(10);
}

// String greeEveryone(){
//   return 'Hello E}veryone';
// }

// String greetSomeone(name){
//   return 'Hello $name';
// }

