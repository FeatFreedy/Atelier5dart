class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);
  
  @override
  String toString() => message;
}

void verifierMotdepasse(String mdp) {
  if (mdp.length < 6) {
    throw MotdepasseCourtException("Le mot de passe est trop court !");
  }
}

void main() {
  String motDePasse = "abc";

  try {
    verifierMotdepasse(motDePasse);
    print("Mot de passe valide !");
  } 
  on MotdepasseCourtException catch (e) {
    print("Erreur : $e");
  }
}
