class SubjectListModel {
  String status;
  List<Datum> data;
  String message;

  SubjectListModel({
    this.status,
    this.data,
    this.message,
  });

  factory SubjectListModel.fromJson(Map<String, dynamic> json) => new SubjectListModel(
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
  int id;
  int schoolClassId;
  String teacher;
  String subject;
  String token;

  Datum({
    this.id,
    this.schoolClassId,
    this.teacher,
    this.subject,
    this.token,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    id: json["id"] == null ? null : json["id"],
    schoolClassId: json["school_class_id"] == null ? null : json["school_class_id"],
    teacher: json["teacher"] == null ? null : json["teacher"],
    subject: json["subject"] == null ? null : json["subject"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "school_class_id": schoolClassId == null ? null : schoolClassId,
    "teacher": teacher == null ? null : teacher,
    "subject": subject == null ? null : subject,
    "token": token == null ? null : token,
  };
}