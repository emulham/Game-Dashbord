import 'package:flutter/material.dart';
import 'package:games/widgets/game_tile.dart';
import 'package:provider/provider.dart';
import 'package:games/models/game_data.dart';

class GamesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameData>(
      builder: (context, gameData, child) {
        return ListView.builder(
          itemCount: gameData.games.length,
          itemBuilder: (context, index) {
            return GameTile(
              gameTitle: gameData.games[index].name,
              listGameDelete: () {
                gameData.deleteGame(gameData.games[index]);
              },
            );
          },
        );
      },
    );
  }
}
