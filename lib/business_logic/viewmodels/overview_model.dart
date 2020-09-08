import 'package:mutipoint_xenius/business_logic/enum/viewstate.dart';
import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';

import 'package:mutipoint_xenius/business_logic/services/authentication_service.dart';
import 'package:mutipoint_xenius/business_logic/viewmodels/base_model.dart';
import 'package:mutipoint_xenius/locator.dart';

class OverviewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;
 
}
