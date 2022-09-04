// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constants/text_style.dart';

class QuickActions extends StatelessWidget {
  QuickActions({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final List<String> actionText = [
    'Airtime',
    'Data',
    'Pay Bills',
    'Card',
    'Overdraft',
    'Savings',
  ];

  final List<IconData> actionIcon = [
    Icons.phone_android_rounded,
    Icons.bar_chart_rounded,
    Icons.yard_rounded,
    Icons.payment_rounded,
    Icons.energy_savings_leaf_rounded,
    Icons.savings_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.235,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[100],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // mainAxisSpacing: 0,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
            crossAxisCount: 3,
          ),
          itemCount: 6,
          itemBuilder: (context, index) => Column(
            children: [
              Icon(
                actionIcon[index],
                size: 32,
                color: Colors.green[300]!,
              ),
              SizedBox(height: 8),
              Text(
                actionText[index],
                style: qActionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/* 

 style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.green[300],
                ),

*/