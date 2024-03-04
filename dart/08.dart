// ! SECCION 2: CAP 8

void main(){
final mySquare = new square(side: -10);
print('area ${mySquare.calculateArea()}');
}

class square{
  double _side;
  square({required double side})
    :assert(side>=0, 'Side must be higher than 0'),
    _side = side;

  double calculateArea(){
    return _side * _side;
    }

  double get area{
    return _side * _side;
  }

  set side(double value){
    print('setting new value: $value');
    if (value < 0) throw 'Value must be higher than 0';
    _side = value;
  }

  }