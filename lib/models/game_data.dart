import 'package:flutter/material.dart';
import 'package:games/models/game.dart';

class GameData extends ChangeNotifier {
  List<Game> games = [
    Game(name: 'Dota2'),
    Game(name: 'Call of Dute'),
    Game(name: 'Joaker'),
  ];

  void addgame(String newGameTitle) {
    games.add(Game(name: newGameTitle));
    notifyListeners();
  }

  void updateGame(Game game) {
    notifyListeners();
  }

  void deleteGame(Game game) {
    games.remove(game);
    notifyListeners();
  }
}
