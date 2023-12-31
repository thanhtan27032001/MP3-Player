import 'package:flutter/material.dart';
import 'package:mp3_player/domain/model/music_charts_response.dart';

class SongCardComponent extends StatelessWidget {
  final Song song;

  const SongCardComponent(this.song, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(song.rankNum),
              song.thumbnail != null
                  ? ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Image.network(song.thumbnail!,width: 64, height: 64,))
                  : const SizedBox(),

              const SizedBox(
                width: 8,
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song.title ?? 'No title',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Text(
                      song.performer ?? 'No performer',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.play_circle_outline_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
