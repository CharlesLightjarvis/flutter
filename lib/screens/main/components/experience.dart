import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Expérience",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            JobExperience(
              title: "Développeur Flutter",
              company: "",
              location: "Paris, France",
              date: "Août 2020 - Présent",
            ),
            JobExperience(
              title: "Stagiaire Développeur",
              company: "",
              location: "Lyon, France",
              date: "Janvier 2020 - Juillet 2020",
            ),
          ],
        ),
      ),
    );
  }
}

class JobExperience extends StatelessWidget {
  const JobExperience({
    Key? key,
    required this.title,
    required this.company,
    required this.location,
    required this.date,
  }) : super(key: key);

  final String title;
  final String company;
  final String location;
  final String date;

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
                "$title - $company",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: defaultPadding / 4),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lieu: $location"),
                Text("Date: $date"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
