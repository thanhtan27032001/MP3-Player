import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    SongDetailData.fetchSongDetail("LmcGyZLpdukchXDtGyDHkHyZsnzkidRAx").then((value) {
      songDetailResponse = value;
    });
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
              margin: const EdgeInsets.only(top: 16),
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
              child: Text(
                'Tên nghệ sĩ',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0x80FFFFFF),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: screenPadding - 24),
              height: 30,
              child: Slider(
                value: time,
                min: 0,
                max: 4,
                onChanged: (double value) {setState(() {
                  time = value;
                });},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
