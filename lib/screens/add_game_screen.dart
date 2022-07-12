import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:games/models/game_data.dart';

class AddGameScreen extends StatelessWidget {
  final Function addGameCallback;

  AddGameScreen(this.addGameCallback);

  @override
  Widget build(BuildContext context) {
    String? newGameTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Game',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 69, 29, 137),
                fontWeight: FontWeight.bold,
              )),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newGameTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<GameData>(context, listen: false)
                  .addgame(newGameTitle!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 69, 29, 137),
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
