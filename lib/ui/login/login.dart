import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:thikdr/network/webservice.dart';
import 'package:thikdr/ui/login/mvvm_login/check_user_model.dart';
import 'package:thikdr/ui/login/usertype.dart';

import '../../utils/color_constant.dart';
import '../../utils/dialog/dialog_page.dart';
import '../../utils/image_constant.dart';
import '../../utils/pref_utils.dart';
import '../home/home.dart';
import 'mvvm_login/verify_otp_model.dart';

class LoginPage extends StatefulWidget {
  static String get routeName => '@routes/welcome-page';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> with TickerProviderStateMixin {
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  bool isVisiableOtp = false;

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: const Alignment(0.008, 0.029),
                        end: const Alignment(1, 1),
                        colors: [
                      ColorConstant.red900,
                      ColorConstant.deepOrange400De
                    ])),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: const Alignment(0.008, 0.029),
                            end: const Alignment(1, 1),
                            colors: [
                          ColorConstant.red900,
                          ColorConstant.deepOrange400De
                        ])),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SingleChildScrollView(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 12,
                                                                  right: 12),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgLogo,
                                                              height: 76,
                                                              width: 289,
                                                              fit:
                                                                  BoxFit.fill)),
                                                      SizedBox(height: 50),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(15),
                                                        child: TextFormField(
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .whiteA700),
                                                          maxLength: 10,
                                                          keyboardType:
                                                              TextInputType
                                                                  .numberWithOptions(
                                                                      decimal:
                                                                          true),
                                                          inputFormatters: <
                                                              TextInputFormatter>[
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[0-9]+[,.]{0,1}[0-9]*')),
                                                            TextInputFormatter
                                                                .withFunction(
                                                              (oldValue,
                                                                      newValue) =>
                                                                  newValue
                                                                      .copyWith(
                                                                text: newValue
                                                                    .text
                                                                    .replaceAll(
                                                                        '.',
                                                                        ','),
                                                              ),
                                                            ),
                                                          ],
                                                          controller:
                                                              _mobileController,
                                                          decoration:
                                                              InputDecoration(
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 1.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 1.2),
                                                            ),
                                                            border:
                                                                OutlineInputBorder(),
                                                            labelText:
                                                                'Mobile Number',
                                                            labelStyle:
                                                                TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                            hintText:
                                                                'Enter Mobile Number',
                                                          ),
                                                        ),
                                                      ),
                                                      Visibility(
                                                        visible: isVisiableOtp,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15),
                                                          child: TextField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                            inputFormatters: <
                                                                TextInputFormatter>[
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      r'[0-9]+[,.]{0,1}[0-9]*')),
                                                              TextInputFormatter
                                                                  .withFunction(
                                                                (oldValue,
                                                                        newValue) =>
                                                                    newValue
                                                                        .copyWith(
                                                                  text: newValue
                                                                      .text
                                                                      .replaceAll(
                                                                          '.',
                                                                          ','),
                                                                ),
                                                              ),
                                                            ],
                                                            maxLength: 4,
                                                            obscureText: false,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .whiteA700),
                                                            controller:
                                                                _otpController,
                                                            decoration:
                                                                InputDecoration(
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 1.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 1.2),
                                                              ),
                                                              border:
                                                                  OutlineInputBorder(),
                                                              labelText: 'OTP',
                                                              labelStyle: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                              hintText:
                                                                  'Enter OTP',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Visibility(
                                                          visible:
                                                              isVisiableOtp,
                                                          child: SizedBox(
                                                            width: 100,
                                                            height: 30,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () async {
                                                                if (_mobileController
                                                                        .text
                                                                        .toString()
                                                                        .length !=
                                                                    10) {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (BuildContext
                                                                              context) {
                                                                        return DialogPage(
                                                                            "Invalid mobile number!");
                                                                      });
                                                                  return;
                                                                }  else if (!await InternetConnectionChecker().hasConnection) {

                                                                showMsg("Check internet connection!");
                                                                return;
                                                                }
    else {
                                                                  progressDialogue(
                                                                      context);
                                                                  resendOtp();
                                                                }
                                                              },
                                                              child: Text(
                                                                  'Resend OTP'),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                primary: Colors
                                                                    .white,
                                                                onPrimary:
                                                                    Colors.red,
                                                                textStyle:
                                                                    TextStyle(
                                                                        fontSize:
                                                                            10),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12), // <-- Radius
                                                                ),
                                                              ),
                                                            ),
                                                          )),
                                                      SizedBox(height: 60),
                                                      SizedBox(
                                                        width: (MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) -
                                                            100,
                                                        height: 47,
                                                        child: ElevatedButton(
                                                          onPressed: () async {

                                                            if (_mobileController
                                                                    .text
                                                                    .toString()
                                                                    .length !=
                                                                10) {
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return DialogPage(
                                                                        "Invalid mobile number!");
                                                                  });
                                                              return;
                                                            } else if (isVisiableOtp &&
                                                                _otpController
                                                                        .text
                                                                        .toString()
                                                                        .length !=
                                                                    4) {
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return DialogPage(
                                                                        "Otp must be 4 digit!");
                                                                  });

                                                              return;
                                                            }
                                                            else if (!await InternetConnectionChecker().hasConnection) {

                                                              showMsg("Check internet connection!");

                                                              return;
                                                            }

                                                            progressDialogue(
                                                                context);

                                                            if (isVisiableOtp)
                                                              verifyUser();
                                                            else
                                                              checkUser();

                                                            /* Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            UserTypePage()));*/
                                                          },
                                                          child:
                                                              Text('CONTINUE'),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary:
                                                                Colors.white,
                                                            onPrimary:
                                                                Colors.red,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12), // <-- Radius
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ])),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height: 258,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .imgLoginbg1,
                                                                  height: 258,
                                                                  width: 414,
                                                                  fit: BoxFit
                                                                      .fill)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 114,
                                                                      top: 10,
                                                                      right:
                                                                          114),
                                                                  child: Image.asset(
                                                                      ImageConstant
                                                                          .imgConstruction1,
                                                                      height:
                                                                          201,
                                                                      width:
                                                                          186,
                                                                      fit: BoxFit
                                                                          .fill)))
                                                        ])))
                                          ]))))
                        ])))));
  }

  Future<void> checkUser() async {
    try {
      CheckUserModel checkUserModel = await Webservice()
          .requestCheckUser(_mobileController.text.toString());

      Navigator.pop(context);

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialogPage(checkUserModel.message+"\n\n OTP is "+
                checkUserModel.data!.otp.toString());
          });

      if (!checkUserModel.error) {
        setState(() {
          isVisiableOtp = true;
        });
      }

      print('response : ${jsonEncode(checkUserModel)}');
    } catch (e) { Navigator.pop(context);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialogPage(e.toString());
          });
    }
  }

  Future<void> resendOtp() async {
    try {
      CheckUserModel checkUserModel = await Webservice()
          .requestResendOtp(_mobileController.text.toString());

      Navigator.pop(context);

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialogPage(checkUserModel.message);
          });

      if (!checkUserModel.error) {
        setState(() {
          isVisiableOtp = true;
        });
      }

      print('response : ${jsonEncode(checkUserModel)}');
    } catch (e) {}
  }

  Future<void> verifyUser() async {
    try {
      VerifyOtpModel verifyOtpModel = await Webservice().requestVerifyOtp(
          _mobileController.text.toString(), _otpController.text.toString());

      Navigator.pop(context);
      showMsg(verifyOtpModel.message);

      if (!verifyOtpModel.error && verifyOtpModel.data.isRegistered == 0) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    UserTypePage(_mobileController.text.toString())));
      } else if (!verifyOtpModel.error &&
          verifyOtpModel.data.isRegistered == 1) {

        PrefUtils().savePreferencesData("token",verifyOtpModel.data.token.toString());
        var token = await PrefUtils().getPreferencesData("token");

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false);
      }

      print('response : ${verifyOtpModel.message}');
    } catch (e) {

      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialogPage(e.toString());
          });
    }
  }

  void showMsg(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  progressDialogue(BuildContext context) {
    //set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
    showDialog(
      //prevent outside touch
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        //prevent Back button press
        return WillPopScope(
            onWillPop: () async {
              debugPrint("popping from route 2 disabled");
              Navigator.pop(context);
              return true;
            },
            child: alert);
      },
    );
  }
}
