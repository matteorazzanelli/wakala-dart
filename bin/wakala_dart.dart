import 'package:wakala_dart/wakala_dart.dart' as general;

void main(List<String> arguments) {
  general.richiesta1('*', 6);
  general.richiesta2('ini');
  general.richiesta3(4,5);
  print(general.richiesta4(4, 4));
  general.richiesta5(8, 12);

  general.Persona newPerson1 = general.Persona(
    name: 'Mario', surname: 'Rossi', email: 'marco@gmail.com',
    password: 'qwerty', birth: DateTime.now());
  general.Persona newPerson2 = general.Persona(
    name: 'Luigi', surname: 'Neri', email: 'luigi@gmail.com',
    password: '123456', birth: DateTime.now());
  print(newPerson1);
  print(newPerson2);

  print(general.richiesta7([1,2,3,4,5]));

  general.richiesta8();
}