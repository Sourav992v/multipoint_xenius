import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';

class Api {
  static const endpoint = 'http://13.232.173.148/thirdparty/api';

  var client = http.Client();

  Future<LoginResource> getUser(String loginId, String password) async {
    var response = await client
        .get('$endpoint/login?login_id=$loginId&password=$password');

    return LoginResource.fromJson(json.decode(response.body));
  }
  
}
