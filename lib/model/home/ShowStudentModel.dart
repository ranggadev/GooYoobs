class ShowStudentModel {
  String status;
  List<Datum> data;
  String message;

  ShowStudentModel({
    this.status,
    this.data,
    this.message,
  });

  factory ShowStudentModel.fromJson(Map<String, dynamic> json) => new ShowStudentModel(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "data": data == null ? null : new List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message == null ? null : message,
  };
}

class Datum {
  int idParentStudent;
  Student student;

  Datum({
    this.idParentStudent,
    this.student,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    idParentStudent: json["id_parent_student"] == null ? null : json["id_parent_student"],
    student: json["student"] == null ? null : Student.fromJson(json["student"]),
  );

  Map<String, dynamic> toJson() => {
    "id_parent_student": idParentStudent == null ? null : idParentStudent,
    "student": student == null ? null : student.toJson(),
  };
}

class Student {
  int id;
  String name;
  String nik;
  dynamic nisn;
  String username;
  String email;
  String token;
  dynamic placeOfBirth;
  dynamic dateOfBirth;
  dynamic address;
  dynamic mobile;
  String avatar;
  String active;

  Student({
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

  factory Student.fromJson(Map<String, dynamic> json) => new Student(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    nik: json["nik"] == null ? null : json["nik"],
    nisn: json["nisn"],
    username: json["username"] == null ? null : json["username"],
    email: json["email"] == null ? null : json["email"],
    token: json["token"] == null ? null : json["token"],
    placeOfBirth: json["place_of_birth"],
    dateOfBirth: json["date_of_birth"],
    address: json["address"],
    mobile: json["mobile"],
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
    "place_of_birth": placeOfBirth,
    "date_of_birth": dateOfBirth,
    "address": address,
    "mobile": mobile,
    "avatar": avatar == null ? null : avatar,
    "active": active == null ? null : active,
  };
}