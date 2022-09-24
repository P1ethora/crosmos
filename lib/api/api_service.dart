import 'package:crosmos/model/login_model.dart';
import 'package:crosmos/shared/shared_service.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<bool> login(LoginRequestModel request) async {
    Uri uri = Uri.parse('http://localhost:9999/api/login');
    // final response = await http.post(uri, body: request.toJson());
    // if (response.statusCode == 200) {
    //   SharedService.setLoginDetails(loginResponseJson(response.body));
    //   return true;
    // } else {
    //   return false;
    // }
    return true;
  }
}