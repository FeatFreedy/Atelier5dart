void verifierMotdepasse(String mdp) {
  if (mdp.length < 6) {
    throw Exception("Le mot de passe doit contenir au moins 6 caractères.");
  }
}

void main() {
  String motDePasse = "abc";

  try {
    verifierMotdepasse(motDePasse);
    print("Mot de passe valide !");
  } 
  catch (e) {
    print("Erreur : $e");
  }
}
