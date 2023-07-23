import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';
import 'package:medical_app_ui/tabs/card_user.dart';
import 'package:medical_app_ui/widgets/category_card.dart';
import 'package:medical_app_ui/widgets/get_started_button.dart';
import 'package:medical_app_ui/widgets/list_doctor.dart';
import 'package:medical_app_ui/widgets/my_text_field.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  void cardPage() {
    setState(() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const CardUser())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello"),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ashraf Firdaus",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('lib/icons/doctor1.png')),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 380,
                decoration: BoxDecoration(
                  color: containerPink,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/icons/doctor2.png',
                      height: 75,
                      width: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "How do you feel?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Fill out your medical card right now",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GetStarted(
                          onTap: () => cardPage(),
                          newPadding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFieldContainer(
                hintText: "How can we help you?",
                eachIcon: const Icon(Icons.search),
                newPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                eachBorder: InputBorder.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    imagePath: 'lib/icons/dentist.png',
                    doctorCategory: "Dentist",
                  ),
                  CategoryCard(
                    imagePath: 'lib/icons/surgeon.png',
                    doctorCategory: "Surgeon",
                  ),
                  CategoryCard(
                    imagePath: 'lib/icons/oncologist.png',
                    doctorCategory: "Oncologist",
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Doctor list",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("See all"),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorCard(
                        starText: "4.9",
                        doctorName: "Dr Ganesh Guptra",
                        doctorSpecialist: "Therapist 7 y.e."),
                    DoctorCard(
                        starText: "4.9",
                        doctorName: "Dr Ganesh Guptra",
                        doctorSpecialist: "Therapist 7 y.e."),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
