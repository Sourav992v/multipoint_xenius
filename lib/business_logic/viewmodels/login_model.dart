import 'package:chopper/chopper.dart';
import 'package:mutipoint_xenius/business_logic/enum/viewstate.dart';
import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';

import 'package:mutipoint_xenius/business_logic/services/authentication_service.dart';
import 'package:mutipoint_xenius/business_logic/viewmodels/base_model.dart';
import 'package:mutipoint_xenius/locator.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;
  Future<Response<LoginResource>> login() async {
    setState(ViewState.Busy);

    var success = await _authenticationService.getUser();

    setState(ViewState.Idle);
    return success;
  }
}
