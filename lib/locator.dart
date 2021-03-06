import 'package:get_it/get_it.dart';
import 'package:mutipoint_xenius/business_logic/services/authentication_service.dart';

import 'business_logic/services/api.dart';
import 'business_logic/viewmodels/login_model.dart';

GetIt locator = GetIt.instance;

void setupLoactor() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());

  locator.registerFactory(() => LoginModel());
}
