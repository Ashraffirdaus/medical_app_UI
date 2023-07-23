import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';
import 'package:medical_app_ui/tabs/card_user.dart';
import 'package:medical_app_ui/tabs/chat_user.dart';
import 'package:medical_app_ui/tabs/home_user.dart';
import 'package:medical_app_ui/tabs/noti_user.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _currentIndex = 0;

  void togglepages(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final List _pages = const [
    HomeUser(),
    ChatUser(),
    NotiUser(),
    CardUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      backgroundColor: backGroundScaffold,
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: backGroundScaffold,
        currentIndex: _currentIndex,
        onTap: togglepages,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded, color: Colors.black),
              label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add, color: Colors.black),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership, color: Colors.black),
              label: "Card"),
        ],
      ),
    );
  }
}
