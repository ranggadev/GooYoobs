class ScheduleListModel {
  String status;
  List<Datum> data;
  String message;

  ScheduleListModel({
    this.status,
    this.data,
    this.message,
  });

  factory ScheduleListModel.fromJson(Map<String, dynamic> json) => new ScheduleListModel(
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
  int studentId;
  String name;
  List<ListElement> list;

  Datum({
    this.studentId,
    this.name,
    this.list,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    studentId: json["student_id"] == null ? null : json["student_id"],
    name: json["name"] == null ? null : json["name"],
    list: json["list"] == null ? null : new List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "student_id": studentId == null ? null : studentId,
    "name": name == null ? null : name,
    "list": list == null ? null : new List<dynamic>.from(list.map((x) => x.toJson())),
  };
}

class ListElement {
  int id;
  int schoolId;
  String school;
  List<Schedule> schedule;

  ListElement({
    this.id,
    this.schoolId,
    this.school,
    this.schedule,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => new ListElement(
    id: json["id"] == null ? null : json["id"],
    schoolId: json["school_id"] == null ? null : json["school_id"],
    school: json["school"] == null ? null : json["school"],
    schedule: json["schedule"] == null ? null : new List<Schedule>.from(json["schedule"].map((x) => Schedule.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "school_id": schoolId == null ? null : schoolId,
    "school": school == null ? null : school,
    "schedule": schedule == null ? null : new List<dynamic>.from(schedule.map((x) => x.toJson())),
  };
}

class Schedule {
  int subjectId;
  String subject;
  String scheduleClass;
  String day;
  LessonHour lessonHour;
  int schoolClassSubjectStudentId;

  Schedule({
    this.subjectId,
    this.subject,
    this.scheduleClass,
    this.day,
    this.lessonHour,
    this.schoolClassSubjectStudentId,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => new Schedule(
    subjectId: json["subject_id"] == null ? null : json["subject_id"],
    subject: json["subject"] == null ? null : json["subject"],
    scheduleClass: json["class"] == null ? null : json["class"],
    day: json["day"] == null ? null : json["day"],
    lessonHour: json["lesson_hour"] == null ? null : LessonHour.fromJson(json["lesson_hour"]),
    schoolClassSubjectStudentId: json["school_class_subject_student_id"] == null ? null : json["school_class_subject_student_id"],
  );

  Map<String, dynamic> toJson() => {
    "subject_id": subjectId == null ? null : subjectId,
    "subject": subject == null ? null : subject,
    "class": scheduleClass == null ? null : scheduleClass,
    "day": day == null ? null : day,
    "lesson_hour": lessonHour == null ? null : lessonHour.toJson(),
    "school_class_subject_student_id": schoolClassSubjectStudentId == null ? null : schoolClassSubjectStudentId,
  };
}

class LessonHour {
  int id;
  int schoolId;
  String description;
  String startHour;
  String endHour;

  LessonHour({
    this.id,
    this.schoolId,
    this.description,
    this.startHour,
    this.endHour,
  });

  factory LessonHour.fromJson(Map<String, dynamic> json) => new LessonHour(
    id: json["id"] == null ? null : json["id"],
    schoolId: json["school_id"] == null ? null : json["school_id"],
    description: json["description"] == null ? null : json["description"],
    startHour: json["start_hour"] == null ? null : json["start_hour"],
    endHour: json["end_hour"] == null ? null : json["end_hour"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "school_id": schoolId == null ? null : schoolId,
    "description": description == null ? null : description,
    "start_hour": startHour == null ? null : startHour,
    "end_hour": endHour == null ? null : endHour,
  };
}