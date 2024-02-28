import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:football_app/common/appbarnotify.dart';
import 'package:football_app/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  Color currentColor = kprimaryColor;
  @override
  void initState() {
    super.initState();
    String ciao = prefs.then(
      (SharedPreferences prefs) {
        return prefs.getString('primaryColor') ?? kprimaryColor.toString();
      },
    ) as String;

    print(ciao);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarNotify(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Row(
                    children: [
                      const Spacer(),
                      const Text(
                        'Cambia Colore Principale',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          Color value = kprimaryColor;
                          return showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title:
                                  const Text('Scegli il colore che preferisci'),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: kprimaryColor,
                                  onColorChanged: (color) {
                                    setState(() {
                                      value = color;
                                    });
                                  },
                                  pickerAreaHeightPercent: 0.8,
                                  paletteType: PaletteType.hsv,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    'Salva',
                                  ),
                                  onPressed: () async {
                                    prefs.then(
                                      (SharedPreferences prefs) {
                                        return prefs.setString(
                                          'primaryColor',
                                          value.toString(),
                                        );
                                      },
                                    );
                                    setState(() {});
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.color_lens,
                          color: currentColor,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: currentColor,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
