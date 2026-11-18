import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عن المدرسة'),
        backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Vision Card
            _InfoCard(
              icon: Icons.visibility_rounded,
              title: 'رؤيتنا',
              content:
                  'أن نكون صرحاً تعليمياً رائداً يخرّج جيلاً متميزاً علمياً وأخلاقياً، قادراً على المنافسة والإبداع محلياً وعالمياً.',
              color: AppColors.primary,
            ),
            const SizedBox(height: 16),

            // Mission Card
            _InfoCard(
              icon: Icons.flag_rounded,
              title: 'رسالتنا',
              content:
                  'تقديم تعليم نوعي متكامل في بيئة آمنة محفزة، يوازن بين الأصالة والمعاصرة، ويرعى الفروق الفردية لكل طالب وطالبة.',
              color: AppColors.secondary,
            ),
            const SizedBox(height: 16),

            // Slogan
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.accent.withOpacity(0.15), AppColors.accent.withOpacity(0.05)],
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.accent.withOpacity(0.3)),
              ),
              child: Column(
                children: [
                  Icon(Icons.format_quote_rounded, color: AppColors.accent, size: 32),
                  const SizedBox(height: 8),
                  Text(
                    'بالعلم والأخلاق نسعى إلى الآفاق',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            Text(
              'ما يميزنا',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 14),

            _FeatureTile(
              icon: Icons.menu_book_rounded,
              title: 'منهج متوازن',
              subtitle: 'مناهج وزارة التعليم + برامج إثرائية في اللغة الإنجليزية والمهارات الرقمية',
            ),
            _FeatureTile(
              icon: Icons.people_alt_rounded,
              title: 'كادر تعليمي مؤهل',
              subtitle: 'معلمون ومعلمات ذوو خبرة يخضعون لتدريب مستمر',
            ),
            _FeatureTile(
              icon: Icons.security_rounded,
              title: 'بيئة آمنة ومحفزة',
              subtitle: 'مبنى مجهز بأنظمة سلامة حديثة ومتابعة صحية ونفسية',
            ),
            _FeatureTile(
              icon: Icons.sports_soccer_rounded,
              title: 'برامج إثرائية',
              subtitle: 'أنشطة علمية ورياضية وفنية تصقل شخصية الطالب',
            ),
            _FeatureTile(
              icon: Icons.mosque_rounded,
              title: 'تحفيظ القرآن الكريم',
              subtitle: 'برنامج يومي لتحفيظ ومراجعة القرآن بإشراف متخصصين',
            ),
            _FeatureTile(
              icon: Icons.family_restroom_rounded,
              title: 'تواصل مستمر مع الأسرة',
              subtitle: 'قنوات تواصل فاعلة لمتابعة المستوى الدراسي والسلوكي',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final Color color;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 24),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            content,
            style: TextStyle(
              fontSize: 15,
              height: 1.7,
              color: AppColors.textDark.withOpacity(0.85),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _FeatureTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.08),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: AppColors.primary, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textLight,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
