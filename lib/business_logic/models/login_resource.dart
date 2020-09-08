import 'package:json_annotation/json_annotation.dart';
import 'resource.dart';

part 'login_resource.g.dart';

@JsonSerializable()
class LoginResource {
  int rc;
  String message;
  String application;
  String appBaseUrl;
  Resource resource;

  LoginResource(
      {this.rc,
      this.message,
      this.application,
      this.appBaseUrl,
      this.resource});

  factory LoginResource.fromJson(Map<String, dynamic> json) =>
      _$LoginResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResourceToJson(this);
}
