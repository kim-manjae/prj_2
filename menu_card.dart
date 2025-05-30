import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final VoidCallback onTap;

  const MenuCard({
    required this.imageUrl,
    required this.label,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFDCECF5), Color(0xFF6F9BF5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
              const SizedBox(height: 8),
              Text(label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}