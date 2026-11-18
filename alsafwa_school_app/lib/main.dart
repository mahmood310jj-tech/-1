import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
void main(){ runApp(const AlsafwaApp()); }
class AlsafwaApp extends StatelessWidget { const AlsafwaApp({super.key}); @override Widget build(BuildContext context){ return MaterialApp(debugShowCheckedModeBanner: false, title: 'مدرسة الصفوة', theme: AppTheme.lightTheme, locale: const Locale('ar'), supportedLocales: const [Locale('ar'), Locale('en')], localizationsDelegates: const [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate], home: const HomeScreen()); } }
