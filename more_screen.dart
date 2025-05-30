import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '더보기 화면',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}