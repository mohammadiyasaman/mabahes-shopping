class Product {
  int _id;
  String _title;
  String _content;
  String _cost;
  String _imgUrl;

  Product(this._id, this._title, this._content, this._cost, this._imgUrl);

  int get id => _id;
  String get title => _title;
  String get content => _content;
  String get cost => _cost;
  String get imgUrl => _imgUrl;
}
