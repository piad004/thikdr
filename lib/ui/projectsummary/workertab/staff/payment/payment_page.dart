
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thikdr/ui/projectsummary/payment/models/payment_item_model.dart';

import '../../../../../theme/app_decoration.dart';
import '../../../../../theme/app_style.dart';
import '../../../../../utils/color_constant.dart';
import '../../../../../utils/math_utils.dart';
import '../../../payment/widgets/payment_item_widget.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentState();
}

class _PaymentState extends State<PaymentPage> {

  List<PaymentItemModel> _list=[
    PaymentItemModel(''),
    PaymentItemModel(''),
    PaymentItemModel(''),
    PaymentItemModel(''),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return SafeArea(
        child: Scaffold(
          appBar:
          AppBar(
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstant.red900,
                    ColorConstant.deepOrange400De,
                  ],
                  stops: [0.5, 1.0],
                ),
              ),
            ),
            leading: BackButton(
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "Worker Name".toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.textstylerobotobold20.copyWith(
                fontSize: getFontSize(
                  20,
                ),
                height: 0.80,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          backgroundColor: ColorConstant.whiteA700,
          body: Container(
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  21.00,
                ),
                right: getHorizontalSize(
                  14.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          20.00,
                        ),
                        left: getHorizontalSize(
                          87.00,
                        ),
                        right: getHorizontalSize(
                          87.00,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),
                        top:getVerticalSize(6),bottom: getVerticalSize(6)),
                        decoration: AppDecoration.textstylerobotoromanextrabold12,
                        child: Text(
                          "IN 400 per day  |  6 hrs per shift",
                          textAlign: TextAlign.left,
                          style: AppStyle.textstylerobotoromanextrabold12.copyWith(
                            fontSize: getFontSize(
                              14,
                            ),
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          11.00,
                        ),
                        right: getHorizontalSize(
                          2.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5.00,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray5005e,
                            spreadRadius: getHorizontalSize(
                              2.00,
                            ),
                            blurRadius: getHorizontalSize(
                              2.00,
                            ),
                            offset: Offset(
                              0,
                              2,
                            ),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                75.00,
                              ),
                              top: getVerticalSize(
                                22.00,
                              ),
                              bottom: getVerticalSize(
                                19.00,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total Salary",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.textstylerobotoromanbold14
                                            .copyWith(
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          height: 1.14,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          33.00,
                                        ),
                                        top: getVerticalSize(
                                          6.00,
                                        ),
                                        right: getHorizontalSize(
                                          33.00,
                                        ),
                                      ),
                                      child: Text(
                                        "7",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.textstylerobotoromanbold14
                                            .copyWith(
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          height: 1.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: getVerticalSize(
                                    34.00,
                                  ),
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      39.00,
                                    ),
                                    bottom: getVerticalSize(
                                      4.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                65.00,
                              ),
                              top: getVerticalSize(
                                20.00,
                              ),
                              right: getHorizontalSize(
                                50.00,
                              ),
                              bottom: getVerticalSize(
                                21.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      1.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Balance",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.textstylerobotoromanbold143.copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      6.00,
                                    ),
                                  ),
                                  child: Text(
                                    "IN 4,350",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.textstylerobotoromanbold143.copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          1.00,
                        ),
                        top: getVerticalSize(
                          16.00,
                        ),
                      ),
                      child:  ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _list.length,
                          itemBuilder: (context, index) {
                            PaymentItemModel model = _list[index];
                            return PaymentItemWidget(
                              model,
                            );
                          },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        70.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        45.00,
                      ),
                      width: getHorizontalSize(
                        379.00,
                      ),
                      decoration: AppDecoration.textstylerobotoromanbold13,
                      child: Text(
                        "Save",
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanbold13.copyWith(
                          fontSize: getFontSize(
                            13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ));
  }
}
