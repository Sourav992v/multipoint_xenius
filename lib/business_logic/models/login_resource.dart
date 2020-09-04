import 'resource.dart';

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

  LoginResource.fromJson(Map<String, dynamic> json) {
    rc = json['rc'];
    message = json['message'];
    application = json['application'];
    appBaseUrl = json['app_base_url'];
    resource = json['resource'] != null
        ? new Resource.fromJson(json['resource'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rc'] = this.rc;
    data['message'] = this.message;
    data['application'] = this.application;
    data['app_base_url'] = this.appBaseUrl;
    if (this.resource != null) {
      data['resource'] = this.resource.toJson();
    }
    return data;
  }
}
