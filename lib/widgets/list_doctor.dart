import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {super.key,
      required this.starText,
      required this.doctorName,
      required this.doctorSpecialist});

  final String starText;
  final String doctorName;
  final String doctorSpecialist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 180,
        decoration: BoxDecoration(
            color: containerPurple, borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('lib/icons/doctor2.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(starText),
              ],
            ),
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
             const SizedBox(
              height: 5,
            ),
            Text(doctorSpecialist)
          ],
        ),
      ),
    );
  }
}
