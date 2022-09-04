// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class FAB extends StatelessWidget {
  const FAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.message_rounded),
    );
  }
}
