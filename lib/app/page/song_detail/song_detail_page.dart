import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mp3_player/data/song_detail_data.dart';
import 'package:mp3_player/domain/model/song_detail_response.dart';

class SongDetailPage extends StatefulWidget {
  const SongDetailPage({super.key});

  @override
  State<StatefulWidget> createState() => _SongDetailPageState();
}

class _SongDetailPageState extends State<SongDetailPage> {
  late double screenWidth;
  double time = 0;
  SongDetailResponse? songDetailResponse;
  AudioPlayer? player;

  @override
  void initState() {
    super.initState();
    SongDetailData.fetchSongDetail("ZHJntkLQLxVZFQHTHybHLnyLsHzkiBRzJ")
        .then((value) async {
      songDetailResponse = value;
      if (songDetailResponse != null) {
        player = AudioPlayer();
        await player?.setUrl(songDetailResponse!.data!.source!.s128!);
        player?.play();
      }
    });
  }

  @override
  void dispose() {
    player?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenPadding = 32;
    double imageSize = screenWidth - screenPadding;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red, Colors.black],
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenPadding),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Container(
                  width: imageSize,
                  height: imageSize,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              padding: EdgeInsets.symmetric(horizontal: screenPadding),
              width: double.infinity,
              child: Text(
                'Đây là tiêu đề bài hát',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: screenPadding),
              child: const Text(
                'Tên nghệ sĩ',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0x80FFFFFF),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(screenPadding),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        color: Colors.black,
                      ),
                      Container(
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        width: 310,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 30,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 30,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: screenPadding - 24),
              height: 30,
              child: Slider(
                value: time,
                min: 0,
                max: 4,
                onChanged: (double value) {
                  setState(() {
                    time = value;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      size: 48,
                      Icons.skip_previous,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Implement your functionality for the back button here
                    },
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        size: 48,
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        if (player?.playing == true) {
                          player?.pause();
                        } else {
                          player?.play();
                        }
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      size: 48,
                      Icons.skip_next,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Implement your functionality for the next button here
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
