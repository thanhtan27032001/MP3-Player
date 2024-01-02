import 'dart:convert';

import 'package:mp3_player/domain/model/song_detail_response.dart';
import 'package:http/http.dart' as http;

class SongDetailData {
  // https://mp3.zing.vn/xhr/media/get-source?type=audio&key=LmcGyZLpdukchXDtGyDHkHyZsnzkidRAx
  static const String _url = "mp3.zing.vn";

  static Future<SongDetailResponse?> fetchSongDetail(String key) async {

    var uri = Uri.https(_url, "/xhr/media/get-source", {
      "type": "audio",
      "key": key
    });
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      return _parseSongDetailResponse(response.body);
    }
    else if (response.statusCode == 401) {
      print("Not found");
    }
    else {
      print("Something went wrong");
    }
    return null;
  }

  static SongDetailResponse _parseSongDetailResponse(String body) {
    var object = json.decode(body);
    return SongDetailResponse.fromJson(object);
  }
}