// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
