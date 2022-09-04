// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:raven_app/views/screens/banks/bank.dart';
import 'package:raven_app/views/screens/history/history.dart';
import 'package:raven_app/views/screens/home/home.dart';
import 'package:raven_app/views/screens/more/more.dart';

import '../../components/fab.dart';
import '../../components/nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List screens = [
    HomeScreen(),
    Banks(),
    History(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNav(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FAB(),
    );
  }
}
