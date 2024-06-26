import 'package:flutter/material.dart';
import 'package:flutter_assignment/widgets/navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/eventpage.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginPage(),
        '/homepage': (context) => const UserNavigation(),
        '/eventpage': (context) => const CustomEventPage(),
      },
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      initialRoute: '/',
    );
  }
}
