import 'dart:collection';
import 'dart:io';

import 'package:crosmos/main.dart';
import 'package:crosmos/model/login_model.dart';
import 'package:crosmos/shared/shared_service.dart';
import 'package:crosmos/shared/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class APIService {
  static const storage = FlutterSecureStorage();
  static const String HOST = 'https://hot-bars-love-151-249-171-32.loca.lt';

  static Future<String> getToken() async {
    var value = await storage.read(key: 'token');
    if (value != null) {
      return value;
    }
    return '';
  }

  static void deleteToken() async {
    await storage.write(key: 'token', value: null);
  }

  static Future<bool> login(LoginRequestModel request) async {
    final response = await http.post(Uri.parse(
        '$HOST/login?email=${request.email}&password=${request.password}'));

    final statusCode = response.statusCode;
    final json = response.body;

    final parsedJson = jsonDecode(json);

    User.identifier = parsedJson['identifier'];
    User.firstName = parsedJson['firstName'];
    User.lastName = parsedJson['lastName'];
    User.email = parsedJson['email'];
    User.imageUrl = parsedJson['img'];
    await storage.write(key: 'token', value: parsedJson['token']);

    if (statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> loadUserData() async {
    Map<String, String> headers = HashMap();
    String token = await APIService.getToken();
    if (token == null || token == '') {
      return false;
    }
    headers.putIfAbsent("Authorization", () => "Bearer $token");

    final response = await http.get(Uri.parse('$HOST/user'), headers: headers);
    final statusCode = response.statusCode;

    if (statusCode != 200) {
      return false;
    }

    final json = response.body;

    final parsedJson = jsonDecode(json);

    User.identifier = parsedJson['identifier'];
    User.firstName = parsedJson['firstName'];
    User.lastName = parsedJson['lastName'];
    User.email = parsedJson['email'];
    User.imageUrl = parsedJson['img'];
    print('the user has been uploaded');
    return true;
  }

  static Future<bool> registration(String firstName, String lastName,
      String email, String password, String url) async {

    String bodyJson = "{\"firstName\":\"$firstName\", \"lastName\":\"$lastName\", \"email\":\"$email\", \"password\":\"$password\", \"imgUrl\":\"$url\"}";
    final response = await http.post(Uri.parse('$HOST/registration'), body: bodyJson, headers: {"Content-Type": "application/json"},);
    final statusCode = response.statusCode;

    if (statusCode != 200) {
      return false;
    }

    final json = response.body;
    final parsedJson = jsonDecode(json);

    User.identifier = parsedJson['identifier'];
    User.firstName = parsedJson['firstName'];
    User.lastName = parsedJson['lastName'];
    User.email = parsedJson['email'];
    User.imageUrl = parsedJson['img'];
    await storage.write(key: 'token', value: parsedJson['token']);

    return true;
  }

  static Future<bool> takePlace(String placeData) async {
    Map<String, String> headers = HashMap();
    headers.putIfAbsent("Authorization", () => "Bearer ${User.token}");
    final response = await http.post(Uri.parse('$HOST/place'),
        headers: headers, body: placeData);

    return true;
  }
}
