void main(){
  emitNumbers().listen((event) {print('Stream Value: $event');});
}

Stream<int> emitNumbers(){
  return Stream.periodic(const Duration(seconds: 1), (value){
    // print('Desde periodic $value');
    return value;
  }).take(6);
}