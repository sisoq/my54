import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'about_screen.dart'; 
import 'chat_screen.dart'; 
import 'version_screen.dart'; 

class HomeScreen extends StatefulWidget {
  final Function(ThemeMode) updateThemeMode;

  HomeScreen({required this.updateThemeMode});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('11AmaGamHub'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()), 
        );
            
            },
            icon: Icon(Icons.message), 
          ),
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(Icons.newspaper), 
          ),
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(Icons.search_rounded), 
          )
        ],
      ),
      drawer: Drawer(
        child:ListView(
  padding: EdgeInsets.zero,
  children: [
    DrawerHeader(
      child: Text('قائمة التطبيق'),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    ),
    ListTile(
      title: Text('الرئيسية'),
      onTap: () {
        Navigator.popUntil(
          context,
          ModalRoute.withName(Navigator.defaultRouteName),
        );
      },
    ),
    ListTile(
      title: Text('عن التطبيق'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutScreen()), 
        );
      },
    ),
    ListTile(
      title: Text('المحادثة'), 
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()), 
        );
      },
    ),
    ListTile(
      title: Text('إعدادات'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen(
            updateThemeMode: widget.updateThemeMode,
          )),
        );
      },
    ),
    ListTile(
      title: Text('رقم الإصدار'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VersionScreen()),
        );
      },
    ),
  ],
),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'محتوى الصفحة الرئيسية',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text('زر تجريبي'),
            ),
          ],
        ),
      ),
    );
  }
}
