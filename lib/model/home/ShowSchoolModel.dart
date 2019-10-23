class ShowSchoolModel {
  String status;
  List<Datum> data;
  String message;

  ShowSchoolModel({
    this.status,
    this.data,
    this.message,
  });

  factory ShowSchoolModel.fromJson(Map<String, dynamic> json) => new ShowSchoolModel(
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
  String name;
  String username;
  String email;
  String token;
  String active;
  dynamic address;
  int postalCode;
  dynamic latitude;
  dynamic longitude;
  dynamic accreditation;
  dynamic nss;
  dynamic npsn;
  dynamic noTelp;

  Datum({
    this.id,
    this.name,
    this.username,
    this.email,
    this.token,
    this.active,
    this.address,
    this.postalCode,
    this.latitude,
    this.longitude,
    this.accreditation,
    this.nss,
    this.npsn,
    this.noTelp,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    username: json["username"] == null ? null : json["username"],
    email: json["email"] == null ? null : json["email"],
    token: json["token"] == null ? null : json["token"],
    active: json["active"] == null ? null : json["active"],
    address: json["address"],
    postalCode: json["postal_code"] == null ? null : json["postal_code"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    accreditation: json["accreditation"],
    nss: json["nss"],
    npsn: json["npsn"],
    noTelp: json["no_telp"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    "token": token == null ? null : token,
    "active": active == null ? null : active,
    "address": address,
    "postal_code": postalCode == null ? null : postalCode,
    "latitude": latitude,
    "longitude": longitude,
    "accreditation": accreditation,
    "nss": nss,
    "npsn": npsn,
    "no_telp": noTelp,
  };
}