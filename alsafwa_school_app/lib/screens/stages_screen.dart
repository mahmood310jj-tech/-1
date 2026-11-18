import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class StagesScreen extends StatelessWidget {
  const StagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stages = [
      {
        'title': 'رياض الأطفال',
        'desc': 'تنمية المهارات الأساسية عبر التعلم باللعب في بيئة محفزة وآمنة.',
        'icon': Icons.child_care_rounded,
        'color': const Color(0xFFEC4899),
        'grades': 'روضة 1 - تمهيدي',
      },
      {
        'title': 'المرحلة الابتدائية',
        'desc': 'بناء أساس علمي ولغوي قوي منذ الصف الأول مع التركيز على القراءة والحساب والقيم.',
        'icon': Icons.menu_book_rounded,
        'color': const Color(0xFF3B82F6),
        'grades': 'الصف 1 إلى 6',
      },
      {
        'title': 'المرحلة المتوسطة',
        'desc': 'تعزيز الاستقلالية والتفكير النقدي والتحصيلي مع برامج إثرائية متنوعة.',
        'icon': Icons.psychology_rounded,
        'color': const Color(0xFF10B981),
        'grades': 'الصف 7 إلى 9',
      },
      {
        'title': 'المرحلة الثانوية',
        'desc': 'تأهيل جامعي متكامل مع دعم مكثف لقدرات والتحصيلي والاختبارات الوطنية.',
        'icon': Icons.school_rounded,
        'color': const Color(0xFFF59E0B),
        'grades': 'الصف 10 إلى 12',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('المراحل الدراسية'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: stages.length,
        itemBuilder: (context, index) {
          final stage = stages[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: (stage['color'] as Color).withOpacity(0.15),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: (stage['color'] as Color).withOpacity(0.1),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: stage['color'] as Color,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          stage['icon'] as IconData,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              stage['title'] as String,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: stage['color'] as Color,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              stage['grades'] as String,
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.textLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    stage['desc'] as String,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: AppColors.textDark.withOpacity(0.85),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
