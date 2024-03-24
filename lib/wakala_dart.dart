import "dart:io";
import 'package:wakala_dart/abstract_persona.dart' as gp;

/// print loop
void richiesta1(String toPrint, int num) {
  for (int i = num; i > 0; i--) {
    for (int j = 0; j < i; j++) {
     stdout.write(toPrint);
    }
    print('');
  }
}

/// palindorma
void richiesta2(String toCheck){
  if(toCheck.isEmpty){
    print('Inserisci una stringa valida');
    return;
  }
  int before = 0;
  int after = toCheck.length-1;
  while (before < after) {
    if(toCheck[before]==toCheck[after]){
      before++;
      after--;
    }
    else{
      print('La stringa non è palindroma');
      return;
    }
  }
  print('La stringa è palindroma');
}

/// area rettangolo
void richiesta3(final double base, final double altezza){
  if(base <= 0 || altezza <= 0){
    print('Inserisci numeri positivi');
    return;
  }
  print(base*altezza);
}

/// somma prodotto
int richiesta4(int num1, int num2){
  int somma = num1 + num2;
  if(num1 != num2) return somma;
  return somma*3;
}

/// voto studente
void richiesta5(int scritto, int pratico){
  if(scritto < -8 || scritto > 8){
    print('Voto scritto $scritto non valido');
    return ;
  }
  if(pratico < 0 || pratico > 24){
    print('Voto pratico $pratico non valido');
    return ;
  }
  int somma = scritto + pratico;
  if (somma < 18) {
    print('Lo studente è bocciato.');
  }
  else if(somma > 30){
    print('Lo student è promosso con 30 e lode.');
  }
  else{
    print('Lo studente è promosso con $somma');
  }
}

/// richiesta 6
class Persona {
  late String? name;
  late String? surname;
  late String? email;
  late String? password;
  late DateTime? birth;
  Persona({
    required this.name, required this.surname,
    required this.email, required this.password,
    required this.birth
  });
}

/// Calcola media array
double richiesta7(List<double> array){
  return array.reduce((a, b) => a + b) / array.length;
}


///
void richiesta8(){
  List<gp.Docente> listaDocenti = [
    gp.Docente('mario', 'rossi', '12345', 40),
    gp.Docente('lucia', 'verdi', '67789', 50),
    gp.Docente('marco', 'neri', '13579', 60),
    gp.Docente('federica', 'sassi', '24680', 70),
  ];
  List<gp.Studente> listaStudenti = [
    gp.Studente('matteo', 'giardini', '12345', 18),
    gp.Studente('natale', 'pasqua', '67789', 19),
    gp.Studente('simona', 'simoni', '13579', 20),
    gp.Studente('maria', 'sassuolo', '24680', 21),
  ];
  gp.Universita uni = gp.Universita(docenti: listaDocenti, studenti: listaStudenti);

  print(uni.cercaDocentiByCodice('12345'));
  print(uni.cercaStudentiByCodice('12345'));
  print(uni.cercaDocentiByCognome('cognome'));
  print(uni.cercaStudentiByCognome('pasqua'));
  print(uni.mediaEtaDocenti());
  print(uni.mediaEtaStudenti());
}