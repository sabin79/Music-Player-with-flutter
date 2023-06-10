// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class Audioplay extends StatefulWidget {
//   final AudioPlayer? advancedPlayer;
//   Audioplay({super.key, this.advancedPlayer});

//   @override
//   State<Audioplay> createState() => _AudioplayState();
// }

// class _AudioplayState extends State<Audioplay> {
//   Duration _duration = Duration();
//   Duration _position = Duration();
//   final String path = "";
//   bool isPlaying = false;
//   bool isPaused = false;
//   bool isLoop = false;
//   bool isRepat = false;
//   Color color = Colors.black;

//   List<IconData> _icons = [
//     Icons.play_circle_fill,
//     Icons.pause_circle_filled,
//   ];

//   @override
//   void initState() {
//     super.initState();
//     this.widget.advancedPlayer?.onDurationChanged.listen((d) {
//       setState(() {
//         _duration = d;
//       });
//     });
//     this.widget.advancedPlayer?.onPositionChanged.listen((p) {
//       setState(() {
//         _position = p;
//       });
//     });

//     this.widget.advancedPlayer!.setSourceUrl(path);
//     this.widget.advancedPlayer?.onPlayerComplete.listen((event) {
//       setState(() {
//         _position = Duration(seconds: 0);
//         if (isRepat) {
//           isPlaying = true;
//         }

//         isPlaying = false;
//         isRepat = false;
//       });
//     });
//   }

//   Widget btnStart() {
//     // isPlaying = bool;
//     return IconButton(
//       icon: isPlaying == false
//           ? Icon(
//               _icons[0],
//               size: 50,
//               color: Colors.blue,
//             )
//           : Icon(_icons[1], size: 50, color: Colors.blue),
//       padding: EdgeInsets.only(bottom: 10),
//       onPressed: () {
//         if (isPlaying == false) {
//           this.widget.advancedPlayer?.play(path);
//           setState(() {
//             isPlaying = true;
//           });
//         } else if (isPlaying == true) {
//           this.widget.advancedPlayer?.pause(path);
//           setState(() {
//             isPlaying = false;
//           });
//         }
//       },
//     );
//   }

//   Widget Fast() {
//     return IconButton(
//       icon: ImageIcon(
//         AssetImage("img/forward.png"),
//         size: 15,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         this.widget.advancedPlayer?.setPlaybackRate(1.5);
//       },
//     );
//   }

//   Widget slow() {
//     return IconButton(
//       icon: ImageIcon(
//         AssetImage("img/backword.png"),
//         size: 15,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         this.widget.advancedPlayer?.setPlaybackRate(0.5);
//       },
//     );
//   }

//   Widget Loop() {
//     return IconButton(
//       icon: ImageIcon(
//         AssetImage("img/loop.png"),
//         size: 15,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         this.widget.advancedPlayer?.setPlaybackRate(1.5);
//       },
//     );
//   }

//   Widget Repeat() {
//     return IconButton(
//       icon: ImageIcon(
//         AssetImage("img/repeat.png"),
//         size: 15,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         if (isRepat == false) {
//           this.widget.advancedPlayer?.setReleaseMode(ReleaseMode.loop);
//           setState(() {
//             isRepat = true;
//             color = Colors.blue;
//           });
//         } else if (isRepat == true) {
//           this.widget.advancedPlayer?.setReleaseMode(ReleaseMode.release);
//           color = Colors.black;
//           isRepat = false;
//         }
//       },
//     );
//   }

//   Widget slider() {
//     return Slider(
//       value: _position.inSeconds.toDouble(),
//       min: 0.0,
//       activeColor: Colors.red,
//       inactiveColor: Colors.grey,
//       max: _duration.inSeconds.toDouble(),
//       onChanged: (double value) {
//         setState(() {
//           changeToSecond(value.toInt());
//           value = value;
//         });
//       },
//     );
//   }

//   void changeToSecond(int second) {
//     Duration NewDuration = Duration(seconds: second);
//     this.widget.advancedPlayer?.seek(NewDuration);
//   }

//   Widget loadAsset() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Repeat(),
//           slow(),
//           btnStart(),
//           Fast(),
//           Loop(),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 20, right: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   _position.toString().split(".")[0],
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   _duration.toString().split(".")[0],
//                   style: TextStyle(fontSize: 16),
//                 )
//               ],
//             ),
//           ),
//           slider(),
//           loadAsset(),
//         ],
//       ),
//     );
//   }
// }
