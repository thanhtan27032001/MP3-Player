import 'package:flutter/material.dart';
import 'package:mp3_player/data/music_charts_data.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();

}

class HomePageState extends State<HomePage>{
  @override
  void initState() {
    super.initState();
    MusicChartsData.fetchMusicCharts().then((value) {
      print(value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}