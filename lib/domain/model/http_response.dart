class HttpResponse {
  int? err;
  String? msg;
  int? timestamp;

  HttpResponse({this.err, this.msg, this.timestamp});

  HttpResponse.fromJson(Map<String, dynamic> json) {
    err = json['err'];
    msg = json['msg'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['err'] = err;
    data['msg'] = msg;
    data['timestamp'] = timestamp;
    return data;
  }
}