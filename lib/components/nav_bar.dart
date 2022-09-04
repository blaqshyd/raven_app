import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const BottomNav({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.green[400]!,
      backgroundColor: Colors.grey[100],
      type: BottomNavigationBarType.fixed,
      iconSize: 23,
      // elevation: 0,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_rounded),
          label: 'Banks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_edu_rounded),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_suggest_rounded),
          label: 'More',
        ),
      ],
    );
  }
}
