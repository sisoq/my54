import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final Function(ThemeMode) updateThemeMode;

  SettingsScreen({required this.updateThemeMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعدادات'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                updateThemeMode(ThemeMode.system);
              },
              child: Text('الوضع الافتراضي'),
            ),
            ElevatedButton(
              onPressed: () {
                updateThemeMode(ThemeMode.light);
              },
              child: Text('الوضع الفاتح'),
            ),
            ElevatedButton(
              onPressed: () {
                updateThemeMode(ThemeMode.dark);
              },
              child: Text('الوضع الداكن'),
            ),
          ],
        ),
      ),
    );
  }
}
