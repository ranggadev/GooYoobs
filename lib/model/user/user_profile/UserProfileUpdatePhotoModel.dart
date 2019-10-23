class UserProfileUpdatePhotoModel {
  String status;
  Data data;
  String message;

  UserProfileUpdatePhotoModel({
    this.status,
    this.data,
    this.message,
  });

  factory UserProfileUpdatePhotoModel.fromJson(Map<String, dynamic> json) => new UserProfileUpdatePhotoModel(
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
  dynamic nisn;
  String username;
  String email;
  String token;
  String placeOfBirth;
  DateTime dateOfBirth;
  String address;
  String mobile;
  String avatar;
  String active;

  Data({
    this.id,
    this.name,
    this.nik,
    this.nisn,
    this.username,
    this.email,
    this.token,
    this.placeOfBirth,
    this.dateOfBirth,
    this.address,
    this.mobile,
    this.avatar,
    this.active,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    nik: json["nik"] == null ? null : json["nik"],
    nisn: json["nisn"],
    username: json["username"] == null ? null : json["username"],
    email: json["email"] == null ? null : json["email"],
    token: json["token"] == null ? null : json["token"],
    placeOfBirth: json["place_of_birth"] == null ? null : json["place_of_birth"],
    dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
    address: json["address"] == null ? null : json["address"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    avatar: json["avatar"] == null ? null : json["avatar"],
    active: json["active"] == null ? null : json["active"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "nik": nik == null ? null : nik,
    "nisn": nisn,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    "token": token == null ? null : token,
    "place_of_birth": placeOfBirth == null ? null : placeOfBirth,
    "date_of_birth": dateOfBirth == null ? null : dateOfBirth.toIso8601String(),
    "address": address == null ? null : address,
    "mobile": mobile == null ? null : mobile,
    "avatar": avatar == null ? null : avatar,
    "active": active == null ? null : active,
  };
}