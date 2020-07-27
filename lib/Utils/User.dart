class User {

  int _user_id;

  User(this._user_id);

  User.map(dynamic obj)
  {
    this._user_id = obj["user_id"];
  }

  int get user_id => _user_id;

  Map<String, dynamic> toMap()
  {
    var map = new Map<String, dynamic>();

    map["user_id"] = _user_id;
    return map;
  }
  void setUserId(int id)
  {
    this._user_id = user_id;
  }

}