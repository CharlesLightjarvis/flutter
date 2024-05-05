class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Kolapo Obanewa",
    source: "Linkedin",
    text:
        "J'ai eu le plaisir de travailler avec Anwar sur deux projets Flutter et ce qui me frappe le plus dans son travail, c'est sa capacité à écrire un code propre et réutilisable avec les meilleures pratiques. Il est travailleur et rend si facile de transcrire des idées en de belles applications Flutter testables. Il est une perle en Flutter/Dart et a ma plus haute recommandation.",
  ),
  Recommendation(
    name: "Reza Shahbazi",
    source: "Linkedin",
    text:
        "Abu est un atout précieux pour toute organisation. C'est un véritable plaisir de travailler avec lui chez TakeIn. Ses compétences en Flutter sont incroyables ainsi que son professionnalisme et sa capacité à bien travailler en équipe. La capacité d'Abu à résoudre les problèmes est également l'une de ses grandes compétences.",
  ),
  Recommendation(
    name: "Diadem",
    source: "YouTube",
    text:
        "J'aime votre façon de réaliser vos projets et de nous enseigner. Après avoir regardé cela, j'ai aimé et appuyé sur le bouton d'abonnement, puis j'ai regardé votre playlist de vidéos une par une !! En trois heures, j'ai beaucoup appris ! J'ai partagé votre chaîne dans mon groupe WhatsApp de l'université !",
  ),
  Recommendation(
    name: "Roshan Shetty",
    source: "YouTube",
    text:
        "Très direct, professionnel et aussi les meilleures vidéos Flutter sur YouTube ! Ce serait formidable si vous ajoutiez des commentaires à vos étapes avec une pause de 0,5 seconde avant de mettre en œuvre cette étape. Par étapes, je veux dire non pas les étapes de base, mais les étapes structurées. Cependant, merci beaucoup !",
  ),
];
