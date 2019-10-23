class ShowClassModel {
  String status;
  List<Datum> data;
  String message;

  ShowClassModel({
    this.status,
    this.data,
    this.message,
  });

  factory ShowClassModel.fromJson(Map<String, dynamic> json) => new ShowClassModel(
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
  int schoolId;
  int schoolClassStudentId;
  String datumClass;

  Datum({
    this.id,
    this.schoolClassId,
    this.schoolId,
    this.schoolClassStudentId,
    this.datumClass,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    id: json["id"] == null ? null : json["id"],
    schoolClassId: json["school_class_id"] == null ? null : json["school_class_id"],
    schoolId: json["school_id"] == null ? null : json["school_id"],
    schoolClassStudentId: json["school_class_student_id"] == null ? null : json["school_class_student_id"],
    datumClass: json["class"] == null ? null : json["class"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "school_class_id": schoolClassId == null ? null : schoolClassId,
    "school_id": schoolId == null ? null : schoolId,
    "school_class_student_id": schoolClassStudentId == null ? null : schoolClassStudentId,
    "class": datumClass == null ? null : datumClass,
  };
}