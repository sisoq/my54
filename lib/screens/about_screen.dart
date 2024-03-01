import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عن التطبيق'),
      ),
      body: Center(
        child: Text('محتوى الصفحة: عن التطبيق'),
      ),
    );
  }
}
