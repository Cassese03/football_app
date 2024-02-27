import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/providers/players_provider.dart';
import 'package:football_app/utils/json_handler.dart';
import 'package:football_app/widgets/bottom_panel.dart';
import 'package:football_app/widgets/main.dart';

import 'package:provider/provider.dart';

class StadiumScreen extends StatefulWidget {
  @override
  _StadiumScreenState createState() => _StadiumScreenState();
}

class _StadiumScreenState extends State<StadiumScreen> {
  GlobalKey screenShotKey = GlobalKey();

  _readTactics(String squad) async {
    try {
      dynamic formation = await loadFormationFromAssets(squad);
      var playerProvider = Provider.of<PlayersProvider>(context, listen: false);
      List<Player> _players = [];
      formation.forEach((player) {
        print("object");
        _players.add(playerFromJson(player));
      });
      playerProvider.clearAll();
      Future.delayed(Duration(milliseconds: 10), () {
        playerProvider.addAll(_players);
      });
    } catch (e) {
      print(e);
    }
  }

  takescrshot() async {
    RenderRepaintBoundary boundary = screenShotKey.currentContext
        ?.findRenderObject() as RenderRepaintBoundary;
    var image = await boundary.toImage();
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    var pngBytes = byteData?.buffer.asUint8List();
    return pngBytes;
  }

  @override
  void initState() {
    super.initState();
    _readTactics("4-4-2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarAll(),
      body: SafeArea(
        child: Consumer<PlayersProvider>(
          builder: (_, provider, child) => Center(
            child: Container(
              child: RepaintBoundary(
                key: screenShotKey,
                child: Stack(
                  children: [
                    Stadium(),
                    ...provider.players,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomPanel(
        onSelect: (tactic) {
          _readTactics(tactic);
        },
        onColorChange: (color) {
          Provider.of<PlayersProvider>(context, listen: false).setColor(color);
        },
        onSave: () async {
          await takescrshot().then(
            (value) => showDialog(
              context: context,
              builder: (Builder) => AlertDialog(
                title: const Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Complimenti la tua Raimon scende in campo!',
                    ),
                    Text(
                      'Dai il meglio di te in campo!',
                    ),
                  ],
                ),
                content: Image.memory(
                  value,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
