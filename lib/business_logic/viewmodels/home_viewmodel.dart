import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:mutipoint_xenius/business_logic/enum/viewstate.dart';
import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';
import 'package:mutipoint_xenius/business_logic/models/resource.dart';

import 'package:mutipoint_xenius/business_logic/services/authentication_service.dart';
import 'package:mutipoint_xenius/business_logic/viewmodels/base_viewmodel.dart';

import 'package:mutipoint_xenius/locator.dart';

class HomeViewModel extends BaseViewModel {
  AuthenticationService _authService = locator<AuthenticationService>();

  Resource loginResource = Resource();

  Future<Response<LoginResource>> getLoginResource() async {
    setState(ViewState.Busy);
    var resource = await _authService.getUser();
    loginResource = resource.body.resource;
    setState(ViewState.Idle);
    return resource;
  }

  Resource getResource() {
    return loginResource;
  }
}
