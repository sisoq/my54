import 'package:flutter/material.dart';

class VersionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رقم الإصدار'),
      ),
      body: Center(
        child: Text('محتوى الصفحة: رقم الإصدار'),
      ),
    );
  }
}
