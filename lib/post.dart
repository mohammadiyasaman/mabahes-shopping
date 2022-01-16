class Post {
  int _id = 0;
  String _title = "";
  String _content = "";
  String _cost = "";
  String _imgUrl = "";

  Post(this._id, this._title, this._content, this._cost, this._imgUrl);

  Post.fromJson(dynamic json) {
    _id = int.parse(json['id']);
    _title = json['title'];
    _content = json['content'];
    _cost = json['cost'];
    _imgUrl = json['img_url'];
  }

  int get id => _id;
  String get title => _title;
  String get content => _content;
  String get cost => _cost;
  String get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['content'] = _content;
    map['cost'] = _cost;
    map['img_url'] = _imgUrl;
    return map;
  }
}
