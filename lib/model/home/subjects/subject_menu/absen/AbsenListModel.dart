class AbsenListModel {
  String status;
  List<Datum> data;
  String message;

  AbsenListModel({
    this.status,
    this.data,
    this.message,
  });

  factory AbsenListModel.fromJson(Map<String, dynamic> json) => new AbsenListModel(
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
  String subject;
  String datumClass;
  String student;
  String status;

  Datum({
    this.subject,
    this.datumClass,
    this.student,
    this.status,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    subject: json["subject"] == null ? null : json["subject"],
    datumClass: json["class"] == null ? null : json["class"],
    student: json["student"] == null ? null : json["student"],
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "subject": subject == null ? null : subject,
    "class": datumClass == null ? null : datumClass,
    "student": student == null ? null : student,
    "status": status == null ? null : status,
  };
}