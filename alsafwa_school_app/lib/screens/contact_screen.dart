import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تواصل معنا'),
        backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF0A2540), Color(0xFF1A3A5C)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Icon(Icons.location_on_rounded, color: AppColors.accent, size: 40),
                  const SizedBox(height: 12),
                  const Text(
                    'مدارس دار الصفوة الأهلية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'حي العقيق، طريق أبي منصور الشيباني\nالرياض 13515، المملكة العربية السعودية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            _ContactTile(
              icon: Icons.phone_rounded,
              title: 'الهاتف / واتساب',
              subtitle: '+966 55 547 0613',
              color: const Color(0xFF25D366),
              onTap: () => _launchUrl('https://wa.me/966555470613'),
            ),
            _ContactTile(
              icon: Icons.email_rounded,
              title: 'البريد الإلكتروني',
              subtitle: 'info@daralsafwa.edu.sa',
              color: const Color(0xFF3B82F6),
              onTap: () => _launchUrl('mailto:info@daralsafwa.edu.sa'),
            ),
            _ContactTile(
              icon: Icons.language_rounded,
              title: 'الموقع الإلكتروني',
              subtitle: 'alsafwafuture.com',
              color: AppColors.primary,
              onTap: () => _launchUrl('https://alsafwafuture.com'),
            ),
            _ContactTile(
              icon: Icons.map_rounded,
              title: 'الموقع على الخريطة',
              subtitle: 'افتح في خرائط جوجل',
              color: const Color(0xFFEF4444),
              onTap: () => _launchUrl(
                'https://www.google.com/maps/search/?api=1&query=مدارس+دار+الصفوة+الأهلية+حي+العقيق+الرياض',
              ),
            ),

            const SizedBox(height: 20),
            Text(
              'مواعيد العمل: من 6:00 صباحاً إلى 2:00 مساءً',
              style: TextStyle(color: AppColors.textLight, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  const _ContactTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        elevation: 2,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: color, size: 26),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: AppColors.textLight,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.grey.shade400),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
