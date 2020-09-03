import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/business_logic/viewmodels/login_model.dart';
import 'package:mutipoint_xenius/ui/view/base_view.dart';

import 'components/login_header.dart';

class LoginView extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController loginIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: LoginHeader(
            loginIdController: loginIdController,
            passwordController: passwordController,
            validationMessege: model.errorMessage,
          ),
        ),
      ),
    );
  }
}
