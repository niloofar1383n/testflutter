import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/core/theme/theme_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeCubit>().state;

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Switcher')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // نمایش وضعیت فعلی
            Text('Current: ${themeMode.name}'),

            const SizedBox(height: 16),

            // دکمه‌ی سوییچ ساده
            ElevatedButton(
              onPressed: () => context.read<ThemeCubit>().toggleTheme(),
              child: const Text('Toggle Theme'),
            ),

            const SizedBox(height: 16),

            // اگر بخواهی سه گزینه داشته باشی: System / Light / Dark
            Wrap(
              spacing: 8,
              children: [
                OutlinedButton(
                  onPressed: () => context.read<ThemeCubit>().setSystem(),
                  child: const Text('System'),
                ),
                OutlinedButton(
                  onPressed: () => context.read<ThemeCubit>().setLight(),
                  child: const Text('Light'),
                ),
                OutlinedButton(
                  onPressed: () => context.read<ThemeCubit>().setDark(),
                  child: const Text('Dark'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
