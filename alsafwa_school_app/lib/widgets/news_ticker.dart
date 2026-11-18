import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
class NewsTicker extends StatelessWidget {
  final List<String> news;
  const NewsTicker({super.key, required this.news});
  @override
  Widget build(BuildContext context) {
    String text = news.join('   •   ');
    return Container(height: 45, color: const Color(0xFF0B3D5F), child: Row(children: [
      Container(color: const Color(0xFFC9A227), padding: const EdgeInsets.symmetric(horizontal: 10), child: const Row(children: [Icon(Icons.campaign, color: Colors.white, size: 20), SizedBox(width: 4), Text('أخبار المدرسة', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))])),
      Expanded(child: Marquee(text: text, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600), scrollAxis: Axis.horizontal, blankSpace: 60, velocity: 35)),
    ]));
  }
}
