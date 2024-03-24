
abstract class Persona {
  late String nome;
  late String cognome;
  late String codice;
  late int eta;
  Persona({required this.nome, required this.cognome, 
  required this.codice, required this.eta});

  String getNome(){return nome;}
  String getCognome(){return cognome;}
  String getCodice(){return codice;}
  int getEta(){return eta;}
}

class Docente extends Persona {
  Docente(nome, cognome, codice, eta) : 
    super(nome: nome, cognome: cognome, codice: codice, eta: eta);
}

class Studente extends Persona {
  Studente(nome, cognome, codice, eta) : 
    super(nome: nome, cognome: cognome, codice: codice, eta: eta);
}

class Universita {
  late List<Docente> docenti;
  late List<Studente> studenti;

  Universita({required this.docenti, required this.studenti});

  Docente? cercaDocentiByCodice(String codice){
    for (var element in docenti) {
      if(element.codice==codice) {
        return element;
      }
    }
    return null;
  }
  Studente? cercaStudentiByCodice(String codice){
    for (var element in studenti) {
      if(element.codice==codice) {
        return element;
      }
    }
    return null;
  }

  List<Docente>? cercaDocentiByCognome(String cognome){
    return docenti.where((element) => element.cognome==cognome).toList();
  }
  List<Studente>? cercaStudentiByCognome(String cognome){
    return studenti.where((element) => element.cognome==cognome).toList();
  }

  double mediaEtaStudenti(){
    int somma = 0;
    for (var element in studenti) {
      somma += element.getEta();
    }
    return somma/studenti.length;
  }

  double mediaEtaDocenti(){
    int somma = 0;
    for (var element in docenti) {
      somma += element.getEta();
    }
    return somma/docenti.length;
  }
}