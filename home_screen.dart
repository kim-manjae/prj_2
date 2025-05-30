import 'package:flutter/material.dart';
import '../widgets/menu_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ─────────── 인사말 ───────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Hello,',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                            )),
                        SizedBox(height: 4),
                        Text('Find a hospital',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.language, size: 28),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // ─────────── 내 진료 기록 카드 ───────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFDCECF5), Color(0xFF6F9BF5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('내 진료 기록',
                        style: TextStyle(fontSize: 12, color: Colors.black87)),
                    SizedBox(height: 8),
                    Center(
                      child: Text('내 진료 기록이 없어요.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          )),
                    ),
                  ],
                ),
              ),
            ),

            // ─────────── 병원/약국 찾기 그리드 ───────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: MenuCard(
                      imageUrl: 'https://placehold.co/180x180',
                      label: '병원 찾기',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: MenuCard(
                      imageUrl: 'https://placehold.co/180x180',
                      label: '약국 찾기',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),

            // ─────────── 챗봇 대화하기 ───────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFDCECF5), Color(0xFFA9C5FF)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://placehold.co/120x120',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        '챗 봇 대화하기',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ─────────── 응급 병원 찾기 ───────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFDCECF5), Color(0xFF6F9BF5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.warning, size: 28, color: Colors.red),
                    SizedBox(width: 12),
                    Text('응급 병원 찾기',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                    SizedBox(width: 12),
                    Icon(Icons.warning, size: 28, color: Colors.red),
                  ],
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'chat bot'),
          BottomNavigationBarItem(icon: Icon(Icons.checklist), label: 'my info'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'more'),
        ],
      ),
    );
  }
}
