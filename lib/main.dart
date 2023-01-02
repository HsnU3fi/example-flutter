import 'package:espad/providers/cards.provider.dart';
import 'package:espad/views/cards/get.dart';
import 'package:espad/views/splash/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CardsProvider()),],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/get_cards': (context) => const Cards()
      },
    );
  }
}



