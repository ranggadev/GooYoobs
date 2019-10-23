class UasListModel {
  String status;
  List<Datum> data;
  String message;

  UasListModel({
    this.status,
    this.data,
    this.message,
  });

  factory UasListModel.fromJson(Map<String, dynamic> json) => new UasListModel(
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
  String semester;
  int grade;
  int remedial;

  Datum({
    this.id,
    this.semester,
    this.grade,
    this.remedial,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    id: json["id"] == null ? null : json["id"],
    semester: json["semester"] == null ? null : json["semester"],
    grade: json["grade"] == null ? null : json["grade"],
    remedial: json["remedial"] == null ? null : json["remedial"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "semester": semester == null ? null : semester,
    "grade": grade == null ? null : grade,
    "remedial": remedial == null ? null : remedial,
  };
}