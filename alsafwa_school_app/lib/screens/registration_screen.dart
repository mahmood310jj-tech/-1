import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _studentNameController = TextEditingController();
  String? _selectedStage;

  final List<String> stages = [
    'رياض الأطفال',
    'المرحلة الابتدائية',
    'المرحلة المتوسطة',
    'المرحلة الثانوية',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _studentNameController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Row(
            children: [
              Icon(Icons.check_circle, color: AppColors.success),
              SizedBox(width: 8),
              Text('تم الإرسال بنجاح'),
            ],
          ),
          content: const Text(
            'شكراً لتواصلك معنا. سيتواصل معك فريق القبول في أقرب وقت ممكن.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                Navigator.pop(context);
              },
              child: const Text('حسناً'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلب تسجيل / استفسار'),
        backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.info_outline, color: AppColors.primary),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'املأ النموذج وسنتواصل معك لتأكيد التسجيل أو الإجابة على استفسارك.',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              Text('اسم ولي الأمر', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'أدخل اسمك الكامل',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                validator: (v) => v == null || v.isEmpty ? 'هذا الحقل مطلوب' : null,
              ),
              const SizedBox(height: 18),

              Text('رقم الجوال', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: '05xxxxxxxx',
                  prefixIcon: Icon(Icons.phone_android),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return 'هذا الحقل مطلوب';
                  if (v.length < 9) return 'رقم الجوال غير صحيح';
                  return null;
                },
              ),
              const SizedBox(height: 18),

              Text('اسم الطالب / الطالبة', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              TextFormField(
                controller: _studentNameController,
                decoration: const InputDecoration(
                  hintText: 'اسم الطالب',
                  prefixIcon: Icon(Icons.school_outlined),
                ),
                validator: (v) => v == null || v.isEmpty ? 'هذا الحقل مطلوب' : null,
              ),
              const SizedBox(height: 18),

              Text('المرحلة الدراسية', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _selectedStage,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.list_alt),
                ),
                hint: const Text('اختر المرحلة'),
                items: stages
                    .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                    .toList(),
                onChanged: (v) => setState(() => _selectedStage = v),
                validator: (v) => v == null ? 'يرجى اختيار المرحلة' : null,
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'إرسال الطلب',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
