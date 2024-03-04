
void main(){
  final enemigoxd = changoEnemy(initialHP: 40.00, );


  double recoverDamage(Enemy enemy){
    if (enemy.HP >50){
      throw Exception('Too much Health to recover...');
    }
    return enemy.HP + 40;
  }
  print('HP: ${recoverDamage(enemigoxd)}');
}

enum factionList {nuclear, pene, xd}

abstract class Enemy{
  double HP;
  factionList faction;

  Enemy({required this.HP, required this.faction});

  void takeDamage(double amount){

  }
}

class changoEnemy extends Enemy {
  changoEnemy({required double initialHP})
    : super(HP: initialHP, faction: factionList.pene);

  @override
  void takeDamage (double amount){
    HP-=amount;
  }
}

class peneEnemy implements Enemy {
  @override
  double HP;

  @override
  factionList faction;

  peneEnemy({required double this.HP, required this.faction})

 // @override
  void takeDamage(double aaa){
    print('aa');
  }
}