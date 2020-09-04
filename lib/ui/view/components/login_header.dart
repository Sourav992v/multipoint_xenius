import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mutipoint_xenius/ui/view/home.dart';
import 'package:provider/provider.dart';

import 'package:mutipoint_xenius/business_logic/viewmodels/login_model.dart';
import 'package:mutipoint_xenius/components/rouded_button.dart';
import 'package:mutipoint_xenius/components/rounded_input_field.dart';
import 'package:mutipoint_xenius/components/rounded_password_field.dart';
import 'package:mutipoint_xenius/components/check_box.dart';

import '../../../constants.dart';
import '../../../locator.dart';

class LoginHeader extends StatefulWidget {
  final TextEditingController loginIdController;
  final TextEditingController passwordController;
  final String validationMessege;

  const LoginHeader({
    @required this.loginIdController,
    @required this.passwordController,
    this.validationMessege,
  });

  @override
  _LoginHeaderState createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  bool _obscureText = true;

  String _connectivityStatus;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectionSubscription;

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
    _connectionSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult connectivityResult;

    try {
      connectivityResult = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    if (!mounted) {
      Future.value(null);
    }

    return _updateConnectionStatus(connectivityResult);
  }

  void printWrapped(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  Future<void> _updateConnectionStatus(
      ConnectivityResult connectivityResult) async {
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        setState(() => _connectivityStatus = connectivityResult.toString());
        break;
      case ConnectivityResult.wifi:
        setState(() => _connectivityStatus = connectivityResult.toString());
        break;
      case ConnectivityResult.none:
        setState(() => _connectivityStatus = connectivityResult.toString());
        break;
      default:
        setState(() => _connectivityStatus = connectivityResult.toString());
    }
  }

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
                fit: BoxFit.fill,
                alignment: Alignment.center),
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
                        loginIdController: widget.loginIdController,
                        icon: Icons.person,
                        hintText: "Login Id",
                      ),
                      RoudedPasswordField(
                        passwordController: widget.passwordController,
                        obscureText: _obscureText,
                      ),
                      CheckBoxCostume(
                        title: 'Show Password',
                        value: !_obscureText,
                        checked: (bool value) {
                          toggle();
                        },
                      ),
                      RoundedButton(
                        text: 'Sign In',
                        press: () async {
                          FocusScope.of(context).unfocus();

                          if (_connectivityStatus ==
                                  "ConnectivityResult.mobile" ||
                              _connectivityStatus ==
                                  "ConnectivityResult.wifi") {
                            var success = await model.login(
                                widget.loginIdController.text,
                                widget.passwordController.text);
                            printWrapped(success.resource.toJson().toString());
                            if (success.rc == 0) {
                              Navigator.pushReplacementNamed(context, Home.id);
                            } else {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text(
                                  'Invalid credentials!',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0,
                                  ),
                                ),
                                backgroundColor: kColorPrimaryDark,
                              ));
                            }
                          } else {
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(
                                'No Internet!',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                              backgroundColor: kColorPrimaryDark,
                            ));
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
