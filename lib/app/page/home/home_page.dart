import 'package:flutter/material.dart';
import 'package:mp3_player/app/component/song_card_component.dart';
import 'package:mp3_player/data/music_charts_data.dart';
import 'package:mp3_player/domain/model/music_charts_response.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  MusicChartResponse? musicCharts;

  @override
  void initState() {
    super.initState();
    MusicChartsData.fetchMusicCharts().then((value) {
      setState(() {
        musicCharts = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bảng xếp hạng',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: musicCharts != null
          ? Container(
        padding: const EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: musicCharts?.data?.song?.length,
                itemBuilder: (context, index) {
                  return SongCardComponent(musicCharts!.data!.song![index]);
                },

              ),
          )
          : const CircularProgressIndicator(),
    );
  }
}
