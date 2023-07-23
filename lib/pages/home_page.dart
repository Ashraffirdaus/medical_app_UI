import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';
import 'package:medical_app_ui/pages/tabs_page.dart';
import 'package:medical_app_ui/widgets/get_started_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void nextPage() {
    setState(() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const DetailsPage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundScaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset('lib/icons/medical.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "All specialists in one app",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  "Find your doctor and make an appointment with one tap"),
              const SizedBox(
                height: 15,
              ),
              GetStarted(onTap: () => nextPage(), newPadding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
