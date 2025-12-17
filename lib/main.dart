import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/feature/login/presentation/screen/login_screen.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_cubit.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return MaterialApp(
          title: 'Theme Demo',
          theme: AppTheme.lightTheme, // لایت
          darkTheme: AppTheme.darkTheme, // دارک
          themeMode: themeMode, // کنترل بر اساس Cubit
          home: const LoginScreen(),
        );
      },
    );
  }
}
