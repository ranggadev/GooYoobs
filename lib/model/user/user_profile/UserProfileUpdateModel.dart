class UserProfileUpdateModel {
  String status;
  dynamic data;
  String message;

  UserProfileUpdateModel({
    this.status,
    this.data,
    this.message,
  });

  factory UserProfileUpdateModel.fromJson(Map<String, dynamic> json) => new UserProfileUpdateModel(
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