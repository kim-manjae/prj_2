import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보 화면',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}