import 'dart:convert';

import 'package:mp3_player/domain/model/music_charts_response.dart';
import 'package:http/http.dart' as http;

class MusicChartsData {
  static const String _url = 'mp3.zing.vn';

  static Future<MusicChartResponse?> fetchMusicCharts() async {
    var uri = Uri.https(_url, '/xhr/chart-realtime', {
      "songId": "0",
      "videoId": "0",
      "albumId": "0",
      "chart": "song",
      "time": "-1"
    });
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      return parseMusicChartResponse(response.body);
    }
    else if (response.statusCode == 401) {
      print("Not found");
    }
    else {
      print("Something went wrong");
    }
    return null;
  }

  static MusicChartResponse parseMusicChartResponse(String data){
    var object = json.decode(data);
    return MusicChartResponse.fromJson(object);
  }
}