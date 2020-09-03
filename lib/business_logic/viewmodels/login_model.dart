import 'package:mutipoint_xenius/business_logic/enum/viewstate.dart';
import 'package:mutipoint_xenius/business_logic/services/authentication_service.dart';
import 'package:mutipoint_xenius/business_logic/viewmodels/base_model.dart';
import 'package:mutipoint_xenius/locator.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;
  Future<bool> login(String loginId, String password) async {
    setState(ViewState.Busy);

    if (loginId == null || password == null) {
      errorMessage = 'Value entered is not a number';
      setState(ViewState.Idle);
      return false;
    }
    var success = await _authenticationService.login(loginId, password);

    setState(ViewState.Idle);
    return success;
  }
}
