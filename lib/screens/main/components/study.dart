import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Study extends StatefulWidget {
  const Study({Key? key}) : super(key: key);

  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Utiliser SizedBox avec une largeur fixe
      width: MediaQuery.of(context).size.width *
          0.8, // Largeur fixe de 80% de la largeur de l'écran
      child: SingleChildScrollView(
        // Utiliser SingleChildScrollView ici
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Études",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            EducationLevelText(
              level: "Master",
              subject: "Informatique",
              institution: "Université de Paris",
              year: "2018 - 2020",
            ),
            EducationLevelText(
              level: "Bachelor",
              subject: "Ingénierie",
              institution: "Université de Lyon",
              year: "2015 - 2018",
            ),
            EducationLevelText(
              level: "Lycée",
              subject: "Mathématiques",
              institution: "Lycée Victor Hugo",
              year: "2012 - 2015",
            ),
          ],
        ),
      ),
    );
  }
}

class EducationLevelText extends StatelessWidget {
  const EducationLevelText({
    Key? key,
    required this.level,
    required this.subject,
    required this.institution,
    required this.year,
  }) : super(key: key);

  final String level;
  final String subject;
  final String institution;
  final String year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              SizedBox(width: defaultPadding / 2),
              Text(
                "$level - $subject",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: defaultPadding / 4),
          Padding(
            padding: EdgeInsets.only(left: 24), // Indentation
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Institution: $institution"),
                Text("Années: $year"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
