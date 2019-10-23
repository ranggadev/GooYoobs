class SkillListModel {
  String status;
  List<Datum> data;
  String message;

  SkillListModel({
    this.status,
    this.data,
    this.message,
  });

  factory SkillListModel.fromJson(Map<String, dynamic> json) => new SkillListModel(
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
  String label;
  int semesterId;
  String semester;
  List<Kd> kds;
  int grade;

  Datum({
    this.id,
    this.label,
    this.semesterId,
    this.semester,
    this.kds,
    this.grade,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    id: json["id"] == null ? null : json["id"],
    label: json["label"] == null ? null : json["label"],
    semesterId: json["semester_id"] == null ? null : json["semester_id"],
    semester: json["semester"] == null ? null : json["semester"],
    kds: json["kds"] == null ? null : new List<Kd>.from(json["kds"].map((x) => Kd.fromJson(x))),
    grade: json["grade"] == null ? null : json["grade"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "label": label == null ? null : label,
    "semester_id": semesterId == null ? null : semesterId,
    "semester": semester == null ? null : semester,
    "kds": kds == null ? null : new List<dynamic>.from(kds.map((x) => x.toJson())),
    "grade": grade == null ? null : grade,
  };
}

class Kd {
  int id;
  String curriculum;
  int semesterId;
  String indexKd;
  String kd;

  Kd({
    this.id,
    this.curriculum,
    this.semesterId,
    this.indexKd,
    this.kd,
  });

  factory Kd.fromJson(Map<String, dynamic> json) => new Kd(
    id: json["id"] == null ? null : json["id"],
    curriculum: json["curriculum"] == null ? null : json["curriculum"],
    semesterId: json["semester_id"] == null ? null : json["semester_id"],
    indexKd: json["index_kd"] == null ? null : json["index_kd"],
    kd: json["kd"] == null ? null : json["kd"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "curriculum": curriculum == null ? null : curriculum,
    "semester_id": semesterId == null ? null : semesterId,
    "index_kd": indexKd == null ? null : indexKd,
    "kd": kd == null ? null : kd,
  };
}