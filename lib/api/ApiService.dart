//import 'dart:convert';
//import 'dart:io';
//import 'package:http/http.dart' as http;
//import 'package:sekolah_kite_parent/model/chat/ChatListModel.dart';
//import 'package:sekolah_kite_parent/model/home/ShowStudentModel.dart';
//import 'package:sekolah_kite_parent/model/home/ShowClassModel.dart';
//import 'package:sekolah_kite_parent/model/home/ShowSchoolModel.dart';
//import 'package:sekolah_kite_parent/model/home/invite_student/InviteStudentModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/SubjectListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/absen/AbsenListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/attitude/AttitudeListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/mid/MidListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/skill/SkillListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/task/TaskListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/test/TestListModel.dart';
//import 'package:sekolah_kite_parent/model/home/subjects/subject_menu/uas/UasListModel.dart';
//import 'package:sekolah_kite_parent/model/schedule/ScheduleListModel.dart';
//import 'package:sekolah_kite_parent/model/user/UserLoginModel.dart';
//import 'package:sekolah_kite_parent/model/user/user_profile/UserProfileModel.dart';
//import 'package:sekolah_kite_parent/model/user/UserRegisModel.dart';
//import 'package:path/path.dart';
//import 'package:async/async.dart';
//import 'package:sekolah_kite_parent/model/user/user_profile/UserProfileUpdateModel.dart';
//import 'package:sekolah_kite_parent/model/user/user_profile/UserProfileUpdatePhotoModel.dart';
//import 'package:sekolah_kite_parent/model/chat/ContactListModel.dart';
//
//
//class ApiService {
////  static var baseUrl = "http://10.167.0.157:3000";
//  static var baseUrl = "http://api.dev.sekolahkite.id";
//  static var baseWS = "ws://api.dev.sekolahkite.id";
//  static var imgPlaceholder = "http://mpmco.com/wp-content/uploads/2018/02/placeholder.jpg";
//  static var imgTemp = "https://vignette.wikia.nocookie.net/naruto/images/7/7e/Hashirama_Senju.png/revision/latest?cb=20160124040430";
//
//  // --- User ---
//  static Future<UserLoginModel> userLogin(var body) async {
//    final response = await http.post(Uri.encodeFull(baseUrl + "/parent/login"),
//      headers: {"Accept": "application/json"},
//      body: body,
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      return UserLoginModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('Failed to load post');
//    }
//  }
//
//  static Future<UserRegisModel> userRegis(var body) async {
//    print("rangga user regis : start request");
//    final response = await http.post(Uri.encodeFull(baseUrl + "/parent/register"),
//      headers: {"Accept": "application/json"},
//      body: body,
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga user regis : success request");
//      return UserRegisModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga user regis : Failed to request');
//    }
//  }
//
//  static Future<UserProfileModel> userProfile(String bearer) async {
//    final response = await http.get(Uri.encodeFull(baseUrl + "/parent"),
//        headers: {"Accept": "application/json", "Authorization": bearer}
//    );
//
//    print("rangga user profile : start request");
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga user profile : success request");
//      return UserProfileModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga user profile : failed request');
//    }
//  }
//
//  static Future<UserProfileUpdatePhotoModel> userProfileUpdatePhoto(String bearer, File imageFile) async {
//    var stream = new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
//    var length = await imageFile.length();
//
//    var uri = Uri.parse(baseUrl + "/parent/edit/upload-avatar");
//
//    var request = new http.MultipartRequest("PUT", uri);
//    var multipartFile = new http.MultipartFile('file', stream, length, filename: basename(imageFile.path));
//
//    request.files.add(multipartFile);
//    request.headers.addAll({"Accept": "application/json", "Authorization": bearer});
//
//    http.Response response = await http.Response.fromStream(await request.send());
//
//    print("rangga update photo : start request");
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga update photo : success request");
//      return UserProfileUpdatePhotoModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga update photo : failed request');
//    }
//  }
//
//  static Future<UserProfileUpdateModel> userProfileUpdate(String bearer, var body) async {
//    final response = await http.put(Uri.encodeFull(baseUrl + "/parent/edit"), //change here
//      headers: {"Accept": "application/json", "Authorization": bearer}, //change here
//      body: body,
//    );
//
//    print("rangga user profile update : start request"); //change here
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga user profile update : success request"); //change here
//      return UserProfileUpdateModel.fromJson(json.decode(response.body)); //change here
//    } else {
//      print("rangga user profile update : " + response.body.toString()); //change here
//      throw Exception('rangga join to school : failed request');
//    }
//  }
//
//
//  // --- Home ---
//  static Future<ShowStudentModel> showStudent(String bearer) async {
//    print("rangga show student : start request"); //change here
//    final response = await http.get(Uri.encodeFull(baseUrl + "/parent/students"),
//        //don't forget to change Http Method and URL
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga show student : success request");
//      return ShowStudentModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga show student : failed request');
//    }
//  }
//
//  static Future<ShowSchoolModel> showSchool(String bearer, var params) async {
//    print("rangga show school : start request"); //change here
//    final response = await http.get(Uri.encodeFull(baseUrl + "/parent/students/schools" + paramsForGetMethod(params)),
//        //don't forget to change Http Method and URL
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //don't forget to change Header
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga show school : success request");
//      return ShowSchoolModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga show school : failed request');
//    }
//  }
//
//  static Future<ShowClassModel> showClass(String bearer, var params) async {
//    print("rangga show class : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes" + paramsForGetMethod(params)),
//        //don't forget to change Http Method and URL
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //don't forget to change Header
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga show class : success request");
//      return ShowClassModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga show class : failed request');
//    }
//  }
//
//
//  // --- Home > Invite Student ---
//  static Future<InviteStudentModel> inviteStudent(String bearer, var body) async {
//    final response = await http.post(Uri.encodeFull(baseUrl + "/parent/join/student"),
//      headers: {
//        "Accept": "application/json",
//        "Authorization": bearer
//      } ,
//      body: body,
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      return InviteStudentModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('Failed to load post');
//    }
//  }
//
//
//  // --- Home > Class > Subject ---
//  static Future<SubjectListModel> subjectList(String bearer, var params) async {
//    print("rangga subject list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga subject list : success request");
//      return SubjectListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga subject list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > Absen ---
//  static Future<AbsenListModel> absenList(String bearer, var params) async {
//    print("rangga absen list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/presences" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga absen list : success request");
//      return AbsenListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga absen list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > Task ---
//  static Future<TaskListModel> taskList(String bearer, var params) async {
//    print("rangga task list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects/tasks" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga task list : success request");
//      return TaskListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga task list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > Test ---
//  static Future<TestListModel> testList(String bearer, var params) async {
//    print("rangga test list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects/tests" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga test list : success request");
//      return TestListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga test list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > MID ---
//  static Future<MidListModel> midList(String bearer, var body) async {
//    print("rangga mid list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects/mid" + paramsForGetMethod(body)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga mid list : success request");
//      return MidListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga mid list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > UAS ---
//  static Future<UasListModel> uasList(String bearer, var params) async {
//    print("rangga uas list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects/semester" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga uas list : success request");
//      return UasListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga uas list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > Skill ---
//  static Future<SkillListModel> skillList(String bearer, var params) async {
//    print("rangga skill list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects/skill" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga skill list : success request");
//      return SkillListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga skill list : failed request');
//    }
//  }
//
//  // --- Home > Class > Subject > Attitude ---
//  static Future<AttitudeListModel> attitudeList(String bearer, var params) async {
//    print("rangga attitude list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schools/classes/subjects/attitude" + paramsForGetMethod(params)), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga attitude list : success request");
//      return AttitudeListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga attitude list : failed request');
//    }
//  }
//
//
//  // --- Schedule List ---
//  static Future<ScheduleListModel> scheduleList(String bearer) async {
//    print("rangga schedule list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/students/schedules"), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga schedule list : success request");
//      return ScheduleListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga schedule list : failed request');
//    }
//  }
//
//
//  // --- Chatting ---
//  static Future<ChatListModel> chatList(String bearer) async {
//    print("rangga chat list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/chatlist"), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga chat list : success request");
//      return ChatListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga chat list : failed request');
//    }
//  }
//
//  static Future<ContactListModel> contactList(String bearer) async {
//    print("rangga contact list : start request");
//    final response = await http.get(
//        Uri.encodeFull(baseUrl + "/parent/contact"), //change here
//        headers: {
//          "Accept": "application/json",
//          "Authorization": bearer
//        } //change here
//    );
//
//    if (response.statusCode == 200 || response.statusCode == 201) {
//      print("rangga contact list : success request");
//      return ContactListModel.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('rangga contact list : failed request');
//    }
//  }
//
//
//
//
//
//  // --- Function ---
//  static String paramsForGetMethod(var params) {
//    String tempUrl = "?";
//    for (var i = 0; i < params.length; i++) {
//      if (i == 0) {
//        tempUrl = tempUrl + params.keys.elementAt(i).toString() + "=" + params.values.elementAt(i).toString();
//      } else {
//        tempUrl = tempUrl + "&" + params.keys.elementAt(i).toString() + "=" + params.values.elementAt(i).toString();
//      }
//    }
//
//    return tempUrl;
//  }
//}