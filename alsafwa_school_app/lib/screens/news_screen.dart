import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final news = [
      {
        'title': 'بدء التسجيل الإلكتروني للعام الدراسي الجديد',
        'date': '07 سبتمبر 2025',
        'desc': 'تعلن مدارس دار الصفوة الأهلية عن فتح باب التسجيل لجميع المراحل الدراسية عبر الموقع الإلكتروني.',
        'tag': 'تسجيل',
      },
      {
        'title': 'معرض مشاريع الذكاء الاصطناعي',
        'date': '15 أكتوبر 2025',
        'desc': 'استعرض طلابنا 43 مشروعاً مبتكراً في معرض أعمال مادة الذكاء الاصطناعي بحضور المدير العام.',
        'tag': 'فعاليات',
      },
      {
        'title': 'افتتاح العام الدراسي بأجواء مميزة',
        'date': '01 سبتمبر 2025',
        'desc': 'استقبلت المدرسة طلابها الجدد والعائدين في يوم افتتاح مليء بالأنشطة والترحيب.',
        'tag': 'أخبار',
      },
      {
        'title': 'تكريم المتفوقين دراسياً',
        'date': '20 يونيو 2025',
        'desc': 'تم تكريم الطلاب المتفوقين في جميع المراحل وتوزيع الجوائز والدروع التقديرية.',
        'tag': 'تكريم',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('الأخبار والفعاليات'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: news.length,
        itemBuilder: (context, index) {
          final item = news[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.08),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          item['tag']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        item['date']!,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textLight,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['desc']!,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: AppColors.textLight,
                        ),
                      ),
                    ],
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
