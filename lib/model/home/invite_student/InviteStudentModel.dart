class InviteStudentModel {
  String status;
  dynamic data;
  String message;

  InviteStudentModel({
    this.status,
    this.data,
    this.message,
  });

  factory InviteStudentModel.fromJson(Map<String, dynamic> json) => new InviteStudentModel(
    status: json["status"] == null ? null : json["status"],
    data: json["data"],
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "data": data,
    "message": message == null ? null : message,
  };
}