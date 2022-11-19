import 'package:aza/pages/auth/auth.dart';
import 'package:flutter/material.dart';
import 'pages/post/Post.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox('check');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/auth',
    routes: {
      '/home': (context) => Post(),
      '/auth': (context) => AuthGmailScreen(),
    },
  ));
}


