// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:raven_app/constants/text_style.dart';

import 'components/payment_btn.dart';
import 'components/quick_actions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
                title: Text(
                  'Hi, Tolulope.',
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
                    color: Colors.green[400]!,
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
              ),
              SizedBox(height: 12),
              Text(
                'Quick actions',
                style: qActionText.copyWith(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              QuickActions(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
