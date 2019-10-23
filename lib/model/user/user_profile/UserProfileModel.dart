class UserProfileModel {
  String status;
  Data data;
  String message;

  UserProfileModel({
    this.status,
    this.data,
    this.message,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => new UserProfileModel(
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
  int id;
  String name;
  String nik;
  String username;
  String email;
  String token;
  String active;
  String placeOfBirth;
  String dateOfBirth;
  String address;
  String mobile;
  dynamic avatar;

  Data({
    this.id,
    this.name,
    this.nik,
    this.username,
    this.email,
    this.token,
    this.active,
    this.placeOfBirth,
    this.dateOfBirth,
    this.address,
    this.mobile,
    this.avatar,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    nik: json["nik"] == null ? null : json["nik"],
    username: json["username"] == null ? null : json["username"],
    email: json["email"] == null ? null : json["email"],
    token: json["token"] == null ? null : json["token"],
    active: json["active"] == null ? null : json["active"],
    placeOfBirth: json["place_of_birth"] == null ? null : json["place_of_birth"],
    dateOfBirth: json["date_of_birth"] == null ? null : json["date_of_birth"],
    address: json["address"] == null ? null : json["address"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "nik": nik == null ? null : nik,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    "token": token == null ? null : token,
    "active": active == null ? null : active,
    "place_of_birth": placeOfBirth == null ? null : placeOfBirth,
    "date_of_birth": dateOfBirth == null ? null : dateOfBirth,
    "address": address == null ? null : address,
    "mobile": mobile == null ? null : mobile,
    "avatar": avatar,
  };
}