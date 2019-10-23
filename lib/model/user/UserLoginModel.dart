class UserLoginModel {
  String status;
  Data data;
  String message;

  UserLoginModel({
    this.status,
    this.data,
    this.message,
  });

  factory UserLoginModel.fromJson(Map<String, dynamic> json) => new UserLoginModel(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "data": data == null ? null : data.toJson(),
    "message": message == null ? null : message,
  };
}

class Data {
  String user;
  int id;
  String token;

  Data({
    this.user,
    this.id,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    user: json["user"] == null ? null : json["user"],
    id: json["id"] == null ? null : json["id"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toJson() => {
    "user": user == null ? null : user,
    "id": id == null ? null : id,
    "token": token == null ? null : token,
  };
}