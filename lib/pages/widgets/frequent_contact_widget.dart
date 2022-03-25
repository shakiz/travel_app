import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrequentContactWidget extends StatelessWidget {
  String iconPath;
  String contactName;
  FrequentContactWidget({required this.iconPath, required this.contactName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
          child: Image.asset(iconPath, fit: BoxFit.cover,)),
    );
  }
}
