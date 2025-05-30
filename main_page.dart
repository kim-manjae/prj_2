import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'chat_screen.dart';
import 'info_screen.dart';
import 'more_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // 각 탭에 대응하는 화면 리스트
  final List<Widget> _pages = const [
    HomeScreen(),
    ChatScreen(),
    InfoScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Chat bot'),
          BottomNavigationBarItem(icon: Icon(Icons.checklist), label: 'My Info'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'More'),
        ],
      ),
    );
  }
}