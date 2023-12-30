class MusicChartResponse {
  int? err;
  String? msg;
  Data? data;
  int? timestamp;

  MusicChartResponse({this.err, this.msg, this.data, this.timestamp});

  MusicChartResponse.fromJson(Map<String, dynamic> json) {
    err = json['err'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['err'] = err;
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['timestamp'] = timestamp;
    return data;
  }
}

class Data {
  List<Song>? song;

  Data({this.song});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['song'] != null) {
      song = <Song>[];
      json['song'].forEach((v) {
        song!.add(Song.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (song != null) {
      data['song'] = song!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Song {
  String? id;
  String? name;
  String? title;
  List<Artists>? artists;
  String? artistsNames;
  String? performer;
  String? type;
  String? link;
  String? lyric;
  String? thumbnail;
  int? duration;
  int? total;
  dynamic rankNum;
  String? rankStatus;
  Artist? artist;
  String? mvLink;

  Song(
      {this.id,
        this.name,
        this.title,
        this.artists,
        this.artistsNames,
        this.performer,
        this.type,
        this.link,
        this.lyric,
        this.thumbnail,
        this.duration,
        this.total,
        this.rankNum,
        this.rankStatus,
        this.artist,
        this.mvLink});

  Song.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(Artists.fromJson(v));
      });
    }
    artistsNames = json['artists_names'];
    performer = json['performer'];
    type = json['type'];
    link = json['link'];
    lyric = json['lyric'];
    thumbnail = json['thumbnail'];
    duration = json['duration'];
    total = json['total'];
    rankNum = json['rank_num'];
    rankStatus = json['rank_status'];
    artist =
    json['artist'] != null ? Artist.fromJson(json['artist']) : null;
    mvLink = json['mv_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['title'] = title;
    if (artists != null) {
      data['artists'] = artists!.map((v) => v.toJson()).toList();
    }
    data['artists_names'] = artistsNames;
    data['performer'] = performer;
    data['type'] = type;
    data['link'] = link;
    data['lyric'] = lyric;
    data['thumbnail'] = thumbnail;
    data['duration'] = duration;
    data['total'] = total;
    data['rank_num'] = rankNum;
    data['rank_status'] = rankStatus;
    if (artist != null) {
      data['artist'] = artist!.toJson();
    }
    data['mv_link'] = mvLink;
    return data;
  }
}

class Artists {
  String? name;
  String? link;

  Artists({this.name, this.link});

  Artists.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['link'] = link;
    return data;
  }
}

class Artist {
  String? id;
  String? name;
  String? link;
  String? cover;
  String? thumbnail;

  Artist({this.id, this.name, this.link, this.cover, this.thumbnail});

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    cover = json['cover'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['link'] = link;
    data['cover'] = cover;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class Album {
  String? id;
  String? link;
  String? title;
  String? name;
  bool? isoffical;
  String? artistsNames;
  List<Artists>? artists;
  String? thumbnail;
  String? thumbnailMedium;

  Album(
      {this.id,
        this.link,
        this.title,
        this.name,
        this.isoffical,
        this.artistsNames,
        this.artists,
        this.thumbnail,
        this.thumbnailMedium});

  Album.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    title = json['title'];
    name = json['name'];
    isoffical = json['isoffical'];
    artistsNames = json['artists_names'];
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(Artists.fromJson(v));
      });
    }
    thumbnail = json['thumbnail'];
    thumbnailMedium = json['thumbnail_medium'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['link'] = link;
    data['title'] = title;
    data['name'] = name;
    data['isoffical'] = isoffical;
    data['artists_names'] = artistsNames;
    if (artists != null) {
      data['artists'] = artists!.map((v) => v.toJson()).toList();
    }
    data['thumbnail'] = thumbnail;
    data['thumbnail_medium'] = thumbnailMedium;
    return data;
  }
}
