import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'color.dart' as AppColors;

class DetailAudio extends StatefulWidget {
  const DetailAudio({Key? key}) : super(key: key);

  @override
  State<DetailAudio> createState() => _DetailAudioState();
}

class _DetailAudioState extends State<DetailAudio> {
  AudioPlayer? advancedPlayer;
  @override
  void initstate() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.audioBluishBackground,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 3,
            child: Container(
              color: AppColors.audioBlueBackground,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: h * 0.2,
            height: h * 0.36,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.1,
                  ),
                  Text(
                    "Beautiful,Crazy",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Avenir",
                    ),
                  ),
                  Text(
                    "luke Combs",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Avenir",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: h * 0.12,
            left: (w - 150) / 2,
            right: (w - 150) / 2,
            height: h * 0.17,
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
                color: AppColors.audioGreyBackground,
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 5),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.ytimg.com/vi/HwgsvFchko4/maxresdefault.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
