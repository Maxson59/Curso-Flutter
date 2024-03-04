import 'dart:async';

void main(){
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });

}

Stream<int> emitNumber() async* {
  final List<int> valuesToEmit = [1, 2, 3, 4, 5];
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }
}