import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Audioplay extends StatefulWidget {
  final AudioPlayer? advancedPlayer;
  Audioplay({super.key, this.advancedPlayer});

  @override
  State<Audioplay> createState() => _AudioplayState();
}

class _AudioplayState extends State<Audioplay> {
  Duration _duration = Duration();
  Duration _position = Duration();
  final String path = "";
  bool isPlaying = false;
  bool isPaused = false;
  bool isLoop = false;

  List<IconData> _icons = [
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
