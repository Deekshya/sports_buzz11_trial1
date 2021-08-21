import 'package:flutter/material.dart';

class ReusableDrawerTabs extends StatelessWidget {
  final String label;
  final IconData iconName;

  ReusableDrawerTabs({required this.label, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: ListTile(
        leading: Icon(
          iconName,
          color: Colors.grey.shade800,
          size: 30,
        ),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
