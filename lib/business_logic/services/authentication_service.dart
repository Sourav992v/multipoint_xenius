import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';

import 'package:mutipoint_xenius/business_logic/services/api.dart';
import 'package:mutipoint_xenius/locator.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  Future<LoginResource> login(String loginId, String password) async {
    var fetchedUser = await _api.getUser(loginId, password);

    var hasUser = fetchedUser;

    return hasUser;
  }
}
