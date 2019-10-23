class ContactListModel {
  String status;
  Data data;
  String message;

  ContactListModel({
    this.status,
    this.data,
    this.message,
  });

  factory ContactListModel.fromJson(Map<String, dynamic> json) => new ContactListModel(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "data": data == null ? null : data.toJson(),
    "message": message == null ? null : message,
  };
}

class Data {
  String myId;
  List<SContact> sContact;
  List<TContact> tContact;

  Data({
    this.myId,
    this.sContact,
    this.tContact,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    myId: json["my_id"] == null ? null : json["my_id"],
    sContact: json["s_contact"] == null ? null : new List<SContact>.from(json["s_contact"].map((x) => SContact.fromJson(x))),
    tContact: json["t_contact"] == null ? null : new List<TContact>.from(json["t_contact"].map((x) => TContact.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "my_id": myId == null ? null : myId,
    "s_contact": sContact == null ? null : new List<dynamic>.from(sContact.map((x) => x.toJson())),
    "t_contact": tContact == null ? null : new List<dynamic>.from(tContact.map((x) => x.toJson())),
  };
}

class SContact {
  String sId;
  String name;
  String avatar;

  SContact({
    this.sId,
    this.name,
    this.avatar,
  });

  factory SContact.fromJson(Map<String, dynamic> json) => new SContact(
    sId: json["s_id"] == null ? null : json["s_id"],
    name: json["name"] == null ? null : json["name"],
    avatar: json["avatar"] == null ? null : json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "s_id": sId == null ? null : sId,
    "name": name == null ? null : name,
    "avatar": avatar == null ? null : avatar,
  };
}

class TContact {
  String tId;
  String name;
  String avatar;

  TContact({
    this.tId,
    this.name,
    this.avatar,
  });

  factory TContact.fromJson(Map<String, dynamic> json) => new TContact(
    tId: json["t_id"] == null ? null : json["t_id"],
    name: json["name"] == null ? null : json["name"],
    avatar: json["avatar"] == null ? null : json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "t_id": tId == null ? null : tId,
    "name": name == null ? null : name,
    "avatar": avatar == null ? null : avatar,
  };
}