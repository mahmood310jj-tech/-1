# تطبيق مدارس دار الصفوة الأهلية

تطبيق أندرويد حقيقي مبني بـ **Flutter** لمدرسة دار الصفوة الأهلية (ابتدائي + ثانوي).

## المميزات

- تصميم غني بالألوان (أزرق داكن + ذهبي + فيروزي)
- دعم كامل للعربية (RTL)
- شاشة رئيسية جذابة
- عن المدرسة (رؤية ورسالة ومميزات)
- المراحل الدراسية
- معرض صور مع **معاينة كاملة الشاشة + تكبير**
- أخبار وفعاليات
- تواصل معنا (هاتف / واتساب / بريد / خريطة)
- نموذج طلب تسجيل

## طريقة التشغيل (VS Code + GitHub)

### 1. تثبيت المتطلبات
- تثبيت [Flutter SDK](https://docs.flutter.dev/get-started/install)
- تثبيت Android Studio أو VS Code مع إضافة Flutter

### 2. فتح المشروع
```bash
cd alsafwa_school_app
flutter pub get
```

### 3. تشغيل التطبيق
```bash
flutter run
```

### 4. بناء ملف APK
```bash
flutter build apk --release
```
الملف سيكون في:
`build/app/outputs/flutter-apk/app-release.apk`

### 5. رفع المشروع على GitHub
```bash
git init
git add .
git commit -m "تطبيق مدارس دار الصفوة الأهلية"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/alsafwa-school-app.git
git push -u origin main
```

## ملاحظات

- الصور في المعرض حالياً من Unsplash (تجريبية). يمكنك استبدالها بصور حقيقية للمدرسة.
- اللوجو موجود في `assets/images/logo.png`
- يمكنك تعديل الألوان من ملف `lib/theme/app_theme.dart`

## التواصل مع المدرسة (حسب البيانات العامة)
- الهاتف: +966 55 547 0613
- الموقع: https://alsafwafuture.com
- حي العقيق - الرياض

---
تم إنشاء المشروع بواسطة Grok
