import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void verifierNombre(int n) {
  if (n < 0) {
    throw NombreNegatifException("Le nombre ne peut pas être négatif !");
  }
}

void main() {
  stdout.write("Entrez un nombre : ");
  String? input = stdin.readLineSync();

  try {
    int nombre = int.parse(input!);
    verifierNombre(nombre);
    print("Le carré de $nombre est ${nombre * nombre}");
  } 
  on NombreNegatifException catch (e) {
    print("Erreur : $e");
  } 
  on FormatException {
    print("Erreur : entrée invalide. Veuillez entrer un nombre entier.");
  }
  finally {
    print("Programme terminé.");
  }
}
