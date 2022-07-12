import 'package:flutter/material.dart';
import 'package:games/models/game_data.dart';
import 'screens/games_screen.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
//String language = 'EN';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameData(),
      child: MaterialApp(
        home: GamesScreen(),
      ),
    );
  }
}
