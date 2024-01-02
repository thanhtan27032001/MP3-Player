class SongDetailResponse {
  int? err;
  String? msg;
  Data? data;
  int? timestamp;

  SongDetailResponse({this.err, this.msg, this.data, this.timestamp});

  SongDetailResponse.fromJson(Map<String, dynamic> json) {
    err = json['err'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['err'] = this.err;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? title;
  String? code;
  int? contentOwner;
  bool? isoffical;
  bool? isWorldWide;
  String? playlistId;
  List<Artists>? artists;
  String? artistsNames;
  String? performer;
  String? type;
  String? link;
  String? lyric;
  String? thumbnail;
  int? duration;
  Source? source;
  Album? album;
  Artist? artist;
  bool? ads;
  bool? isVip;
  String? ip;

  Data(
      {this.id,
        this.name,
        this.title,
        this.code,
        this.contentOwner,
        this.isoffical,
        this.isWorldWide,
        this.playlistId,
        this.artists,
        this.artistsNames,
        this.performer,
        this.type,
        this.link,
        this.lyric,
        this.thumbnail,
        this.duration,
        this.source,
        this.album,
        this.artist,
        this.ads,
        this.isVip,
        this.ip});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    code = json['code'];
    contentOwner = json['content_owner'];
    isoffical = json['isoffical'];
    isWorldWide = json['isWorldWide'];
    playlistId = json['playlist_id'];
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(new Artists.fromJson(v));
      });
    }
    artistsNames = json['artists_names'];
    performer = json['performer'];
    type = json['type'];
    link = json['link'];
    lyric = json['lyric'];
    thumbnail = json['thumbnail'];
    duration = json['duration'];
    source =
    json['source'] != null ? new Source.fromJson(json['source']) : null;
    album = json['album'] != null ? new Album.fromJson(json['album']) : null;
    artist =
    json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    ads = json['ads'];
    isVip = json['is_vip'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['title'] = this.title;
    data['code'] = this.code;
    data['content_owner'] = this.contentOwner;
    data['isoffical'] = this.isoffical;
    data['isWorldWide'] = this.isWorldWide;
    data['playlist_id'] = this.playlistId;
    if (this.artists != null) {
      data['artists'] = this.artists!.map((v) => v.toJson()).toList();
    }
    data['artists_names'] = this.artistsNames;
    data['performer'] = this.performer;
    data['type'] = this.type;
    data['link'] = this.link;
    data['lyric'] = this.lyric;
    data['thumbnail'] = this.thumbnail;
    data['duration'] = this.duration;
    if (this.source != null) {
      data['source'] = this.source!.toJson();
    }
    if (this.album != null) {
      data['album'] = this.album!.toJson();
    }
    if (this.artist != null) {
      data['artist'] = this.artist!.toJson();
    }
    data['ads'] = this.ads;
    data['is_vip'] = this.isVip;
    data['ip'] = this.ip;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['link'] = this.link;
    return data;
  }
}

class Source {
  String? s128;
  String? s320;

  Source({this.s128, this.s320});

  Source.fromJson(Map<String, dynamic> json) {
    s128 = json['128'];
    s320 = json['320'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['128'] = this.s128;
    data['320'] = this.s320;
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
        artists!.add(new Artists.fromJson(v));
      });
    }
    thumbnail = json['thumbnail'];
    thumbnailMedium = json['thumbnail_medium'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    data['title'] = this.title;
    data['name'] = this.name;
    data['isoffical'] = this.isoffical;
    data['artists_names'] = this.artistsNames;
    if (this.artists != null) {
      data['artists'] = this.artists!.map((v) => v.toJson()).toList();
    }
    data['thumbnail'] = this.thumbnail;
    data['thumbnail_medium'] = this.thumbnailMedium;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['cover'] = this.cover;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}
