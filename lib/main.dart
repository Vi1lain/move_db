import 'package:flutter/material.dart';
import 'package:move_db/widgets/auth/auth_widget.dart';
import 'package:move_db/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor:Colors.deepPurple),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/main_screen',
      routes:{
        '/':(context)=> AuthWidget(),
        '/main_screen':(context)=> MainScreenWidget(),
      },
    );
  }
}

