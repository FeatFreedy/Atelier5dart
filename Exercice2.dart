import 'dart:io';
void main() {
  try {
    print("Saisis ton âge : ");
    String? input = stdin.readLineSync();
    int age = int.parse(input ?? "0");
    print("Ton âge est $age ans.");
  }
catch (e) {
    print("Erreur : Veuillez entrer un nombre valide.");
  } 
finally {
    print("Fin d'opération.");
  }
}