// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      useInheritedMediaQuery: true,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(radius: 20),
                title: Text(
                  'Hi, Tolulope,',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  'Good day!',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notification_add_rounded,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                width: size.width,
                height: size.height * 0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Account Balance',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white60,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.visibility_off_rounded,
                            color: Colors.white60,
                            size: 18,
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$150,000',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentButton(
                      size: size,
                      text: 'Add Money',
                      icon: Icons.add_circle_rounded,
                      primaryButtonColor: Colors.green[400]!,
                    ),
                    PaymentButton(
                      size: size,
                      text: 'Send Money',
                      icon: Icons.navigation_rounded,
                      primaryButtonColor: Colors.deepPurple,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    Key? key,
    required this.size,
    required this.icon,
    required this.text,
    required this.primaryButtonColor,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;
  final Color primaryButtonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 20,
        ),
        primary: primaryButtonColor,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: Colors.grey[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            context: context,
            builder: (context) {
              return Container(
                height: size.height * 0.5,
              );
            });
      },
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white70,
          ),
          SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
