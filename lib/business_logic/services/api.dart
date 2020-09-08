import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static const endpoint = 'http://13.232.173.148/thirdparty/api';

  var client = http.Client();

  String loginId;
  String password;

  Future<LoginResource> getUser(String loginId, String password) async {
    SharedPreferences userPref = await SharedPreferences.getInstance();
    loginId = userPref.getString('loginId');
    password = userPref.getString('password');
    var response = await client
        .get('$endpoint/login?loginId=$loginId&password=$password');

    return LoginResource.fromJson(json.decode(response.body));
  }


 
}
