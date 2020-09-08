import 'package:mutipoint_xenius/business_logic/models/login_resource.dart';

import 'package:chopper/chopper.dart';
import 'package:mutipoint_xenius/business_logic/services/interceptor/header_interceptor.dart';
import 'package:mutipoint_xenius/business_logic/services/model_converter.dart';

part 'authentication_service.chopper.dart';

@ChopperApi()
abstract class AuthenticationService extends ChopperService {
  static AuthenticationService create() {
    final client = ChopperClient(
      baseUrl: 'http://13.232.173.148/thirdparty/api',
      interceptors: [HeaderInterceptor(), HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
      services: [
        _$AuthenticationService(),
      ],
    );

    return _$AuthenticationService(client);
  }

  @Get(path: 'login')
  Future<Response<LoginResource>> getUser();
}
