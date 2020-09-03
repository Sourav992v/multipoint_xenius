import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/ui/view/home.dart';
import 'package:provider/provider.dart';

import 'package:mutipoint_xenius/business_logic/viewmodels/login_model.dart';
import 'package:mutipoint_xenius/components/rouded_button.dart';
import 'package:mutipoint_xenius/components/rounded_input_field.dart';
import 'package:mutipoint_xenius/components/rounded_password_field.dart';

import '../../../constants.dart';
import '../../../locator.dart';

class LoginHeader extends StatelessWidget {
  final TextEditingController loginIdController;
  final TextEditingController passwordController;
  final String validationMessege;

  const LoginHeader({
    @required this.loginIdController,
    @required this.passwordController,
    this.validationMessege,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<LoginModel>(
      create: (context) => locator<LoginModel>(),
      child: Consumer<LoginModel>(
        builder: (context, model, child) => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_xenius_background.png"),
                fit: BoxFit.cover),
          ),
          child: Container(
            height: double.maxFinite,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 190, bottom: 190, left: 20, right: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Smart Energy Management Solution",
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.bold,
                              color: kTextColor),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      RoudedInputField(
                        loginIdController: loginIdController,
                        icon: Icons.person,
                        hintText: "Login Id",
                      ),
                      RoudedPasswordField(
                        passwordController: passwordController,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged: (bool value) {}),
                            Text(
                              "Show Password",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RoundedButton(
                        text: 'Sign In',
                        press: () async {
                          var success = await model.login(
                              loginIdController.text, passwordController.text);
                          print(success.toString());
                          if (success) {
                            Navigator.pushNamed(context, Home.id);
                          }
                        },
                        color: kColorAccentRed,
                        textColor: Colors.white,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            color: kTextColor),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(
                          "Powered by Xenia",
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            color: kColorSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
