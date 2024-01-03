import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mp3_player/data/song_detail_data.dart';
import 'package:mp3_player/domain/model/song_detail_response.dart';

class SongDetailProvider extends ChangeNotifier{
  SongDetailResponse? songDetailResponse;
  AudioPlayer? player;

  void fetchSongDetail() {
    SongDetailData.fetchSongDetail("ZHJntkLQLxVZFQHTHybHLnyLsHzkiBRzJ")
        .then((value) async {
      songDetailResponse = value;
      if (songDetailResponse != null) {
        player = AudioPlayer();
        await player?.setUrl(songDetailResponse!.data!.source!.s128!);
        player?.play();
        notifyListeners();
      }
    });
  }

  void playSong() {
    if (player?.playing == true) {
      player?.pause();
    } else {
      player?.play();
    }
  }
}