import 'package:flutter/material.dart';
import 'package:thikdr/ui/login/usertype.dart';

import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';

class LoginPage extends StatefulWidget {
  static String get routeName => '@routes/welcome-page';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> with TickerProviderStateMixin {
  //
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: const Alignment(
                            0.007246369447891643, 0.0282051559055434),
                        end: const Alignment(
                            0.9939613230808374, 0.9999999704819924),
                        colors: [
                      ColorConstant.red900,
                      ColorConstant.deepOrange400De
                    ])),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: const Alignment(
                                0.007246369447891643, 0.0282051559055434),
                            end: const Alignment(
                                0.9939613230808374, 0.9999999704819924),
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
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.all(15),
                                                        child: TextField(
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
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.all(15),
                                                        child: TextField(
                                                          obscureText: false,
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
                                                            labelStyle:
                                                                TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                            hintText:
                                                                'Enter OTP',
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 60),
                                                      SizedBox(
                                                        width: (MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) -
                                                            100,
                                                        height: 47,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                                context, MaterialPageRoute(builder: (context) => UserTypePage()));
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

  onTapBtnContinue() {
    //  Get.toNamed(AppRoutes.selectUserTypeScreen);
  }
}
