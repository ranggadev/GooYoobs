class ChatListModel {
  String status;
  List<Datum> data;
  String message;

  ChatListModel({
    this.status,
    this.data,
    this.message,
  });

  factory ChatListModel.fromJson(Map<String, dynamic> json) => new ChatListModel(
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
  String myId;
  String chatTo;
  String name;
  String avatar;
  String chatMessage;
  DateTime createdAt;

  Datum({
    this.id,
    this.myId,
    this.chatTo,
    this.name,
    this.avatar,
    this.chatMessage,
    this.createdAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    id: json["id"] == null ? null : json["id"],
    myId: json["my_id"] == null ? null : json["my_id"],
    chatTo: json["chat_to"] == null ? null : json["chat_to"],
    name: json["name"] == null ? null : json["name"],
    avatar: json["avatar"] == null ? null : json["avatar"],
    chatMessage: json["chat_message"] == null ? null : json["chat_message"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "my_id": myId == null ? null : myId,
    "chat_to": chatTo == null ? null : chatTo,
    "name": name == null ? null : name,
    "avatar": avatar == null ? null : avatar,
    "chat_message": chatMessage == null ? null : chatMessage,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
  };
}