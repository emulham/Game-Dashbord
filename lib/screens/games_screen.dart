// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:games/models/game_data.dart';
import 'package:games/screens/add_game_screen.dart';
import 'package:games/widgets/games_list.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class GamesScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddGameScreen((newTaskTitle) {
                  // setState(() {
                  //   tasks.add(Task(name: newTaskTitle));
                  //   Navigator.pop(context);
                  // });
                }),
              ),
            ),
          );
        },
        backgroundColor: Color.fromARGB(255, 69, 29, 137),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 69, 29, 137),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Game Dashbord',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                
                GestureDetector(
                  child: Icon(
                    Icons.translate,
                    size: 25,
                    color: Colors.white,
                  ),
                  onTap: () {
                  
                  },
                ),
              ],
            ),
            Text(
              '${Provider.of<GameData>(context).games.length} Games',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: GamesList(),
              ),
            )
          ],
        ),
      ),
    );
  }

}
