import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/game_data.dart';

class GameTile extends StatelessWidget {
  final String gameTitle;
  final _controller = TextEditingController();
  final void Function() listGameDelete;

  GameTile({
    required this.gameTitle,
    required this.listGameDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        gameTitle,
      ),
      onTap: () {
        sendMessage(context);
      },
      onLongPress: listGameDelete,
    );
  }

  final snackbar = SnackBar(
    content: Text("Enter valid mobile number"),
    backgroundColor: Colors.red,
  );

  void sendMessage(context) {
    var txt = _controller.text;
    if (txt.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      _launchURL(txt);
    }
  }

  var _url = "https://api.whatsapp.com/send?phone=971581279351";
  void _launchURL(txt) async => await canLaunch(_url + txt)
      ? await launch(_url + txt)
      : throw 'Could not launch $_url';
}

