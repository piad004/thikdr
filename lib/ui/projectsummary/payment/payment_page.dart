import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thikdr/ui/projectsummary/payment/models/payment_item_model.dart';
import 'package:thikdr/ui/projectsummary/payment/paidpayment/received_payment_page.dart';
import 'package:thikdr/ui/projectsummary/payment/receivedpayment/received_payment_page.dart';
import 'package:thikdr/ui/projectsummary/payment/widgets/payment_item_widget.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/math_utils.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentState();
}

class _PaymentState extends State<PaymentPage> {
  final List<PaymentItemModel> _list = [
    PaymentItemModel(''),
    PaymentItemModel(''),
    PaymentItemModel(''),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /*  Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  109.00,
                ),
                right: getHorizontalSize(
                  109.00,
                ),
              ),
              child: Container(
                height: getSize(
                  16.00,
                ),
                width: getSize(
                  16.00,
                ),
                child: SvgPicture.asset(
                  ImageConstant.imgBiglobe3,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),*/
          /*Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  68.12,
                ),
                right: getHorizontalSize(
                  68.12,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  5.27,
                ),
                width: getHorizontalSize(
                  10.05,
                ),
                child: SvgPicture.asset(
                  ImageConstant.imgVector24,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),*/
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: getVerticalSize(
                90.00,
              ),
              width: size.width,
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  0.00,
                ),
                top: getVerticalSize(
                  0,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: getVerticalSize(
                          10.00,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          60.00,
                        ),
                        width: getHorizontalSize(
                          double.infinity,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              0.00,
                            ),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(
                              0.008,
                              0.029,
                            ),
                            end: Alignment(
                              1,
                              1,
                            ),
                            colors: [
                              ColorConstant.red900,
                              ColorConstant.deepOrange400De,
                            ],
                          ),
                        ),
                      ),
                      /* Image.asset(
                        ImageConstant.imgBaseBg,
                        height: getVerticalSize(
                          60.00,
                        ),
                        width: getHorizontalSize(
                          double.infinity,
                        ),
                        fit: BoxFit.fill,
                      ),*/
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          16.00,
                        ),
                        top: getVerticalSize(
                          10.00,
                        ),
                        right: getHorizontalSize(
                          16.00,
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
                              4,
                            ),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                23.00,
                              ),
                              top: getVerticalSize(
                                21.00,
                              ),
                              bottom: getVerticalSize(
                                20.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        6.00,
                                      ),
                                      right: getHorizontalSize(
                                        6.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Balance",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanbold143
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        6.00,
                                      ),
                                    ),
                                    child: Text(
                                      "+1,05,158",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanbold143
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                31.00,
                              ),
                              top: getVerticalSize(
                                23.00,
                              ),
                              bottom: getVerticalSize(
                                22.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray300,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                31.00,
                              ),
                              top: getVerticalSize(
                                21.00,
                              ),
                              bottom: getVerticalSize(
                                20.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        13.00,
                                      ),
                                      right: getHorizontalSize(
                                        13.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Total In",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanbold144
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        6.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Rs. 1,20,000",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanbold144
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                27.00,
                              ),
                              top: getVerticalSize(
                                23.00,
                              ),
                              bottom: getVerticalSize(
                                22.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray300,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                36.00,
                              ),
                              top: getVerticalSize(
                                21.00,
                              ),
                              right: getHorizontalSize(
                                17.00,
                              ),
                              bottom: getVerticalSize(
                                20.00,
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
                                      5.00,
                                    ),
                                    right: getHorizontalSize(
                                      5.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Total Out",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerobotoromanbold145
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
                                    top: getVerticalSize(
                                      6.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Rs. 10,000",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerobotoromanbold146
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*
          Align(
            alignment: Alignment.centerLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: getVerticalSize(
                      20.00,
                    ),
                    width: getHorizontalSize(
                      81.00,
                    ),
                    decoration: AppDecoration.textstylerobotoromanregular142,
                    child: Text(
                      "summary",
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerobotoromanregular142.copyWith(
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
                        7.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        20.00,
                      ),
                      width: getHorizontalSize(
                        79.00,
                      ),
                      decoration: AppDecoration.textstylerobotoromanregular143,
                      child: Text(
                        "payment",
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanregular143.copyWith(
                          fontSize: getFontSize(
                            14,
                          ),
                          height: 1.14,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        7.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        20.00,
                      ),
                      width: getHorizontalSize(
                        69.00,
                      ),
                      decoration: AppDecoration.textstylerobotoromanregular142,
                      child: Text(
                        "Worker",
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanregular142.copyWith(
                          fontSize: getFontSize(
                            14,
                          ),
                          height: 1.14,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        7.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        20.00,
                      ),
                      width: getHorizontalSize(
                        86.00,
                      ),
                      decoration: AppDecoration.textstylerobotoromanregular142,
                      child: Text(
                        "material",
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanregular142.copyWith(
                          fontSize: getFontSize(
                            14,
                          ),
                          height: 1.14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        7.00,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        2.00,
                      ),
                      bottom: getVerticalSize(
                        2.00,
                      ),
                    ),
                    decoration: AppDecoration.textstylerobotoromanregular142,
                    child: Text(
                      "JOB",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerobotoromanregular142.copyWith(
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
                        7.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        20.00,
                      ),
                      width: getHorizontalSize(
                        63.00,
                      ),
                      decoration: AppDecoration.textstylerobotoromanregular142,
                      child: Text(
                        "Photo",
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanregular142.copyWith(
                          fontSize: getFontSize(
                            14,
                          ),
                          height: 1.14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),*/
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  21.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray102,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        5.00,
                      ),
                      top: getVerticalSize(
                        9.00,
                      ),
                      bottom: getVerticalSize(
                        9.00,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            29.00,
                          ),
                          width: getHorizontalSize(
                            28.00,
                          ),
                          decoration:
                              AppDecoration.textstylerobotoromanregular144,
                          child: Text(
                            "1",
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanregular144
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
                              12.00,
                            ),
                            top: getVerticalSize(
                              6.00,
                            ),
                            bottom: getVerticalSize(
                              7.00,
                            ),
                          ),
                          child: Text(
                            "Pending for Review",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanregular145
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        18.00,
                      ),
                      right: getHorizontalSize(
                        16.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        8.05,
                      ),
                      width: getHorizontalSize(
                        15.67,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgArrowDown,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  15.00,
                ),
                top: getVerticalSize(
                  13.00,
                ),
                right: getHorizontalSize(
                  15.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.deepOrange400,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      0.00,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      0.00,
                    ),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        6.00,
                      ),
                      top: getVerticalSize(
                        5.00,
                      ),
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: getVerticalSize(
                            16.00,
                          ),
                          width: getHorizontalSize(
                            26.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgHamburgerWithRedBg,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              119.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.deepOrange600,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "All Admin Entries",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular136
                                  .copyWith(
                                fontSize: getFontSize(
                                  13,
                                ),
                                height: 0.62,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              54.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              34.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.deepOrange600,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "In",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular136
                                  .copyWith(
                                fontSize: getFontSize(
                                  13,
                                ),
                                height: 0.62,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        59.00,
                      ),
                      top: getVerticalSize(
                        5.00,
                      ),
                      right: getHorizontalSize(
                        26.00,
                      ),
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        16.00,
                      ),
                      width: getHorizontalSize(
                        38.00,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.deepOrange600,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            20.00,
                          ),
                        ),
                      ),
                      child: Text(
                        "Out",
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanregular136.copyWith(
                          fontSize: getFontSize(
                            13,
                          ),
                          height: 0.62,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  1.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray102,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        9.00,
                      ),
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              6.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              18.00,
                            ),
                            width: getHorizontalSize(
                              135.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.lightBlue50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "27 Dec from Sample user 1",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular102
                                  .copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                height: 1.20,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              2.00,
                            ),
                            top: getVerticalSize(
                              7.00,
                            ),
                          ),
                          child: Text(
                            "Sample-1st running pay...",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.textstylerobotoromanbold122.copyWith(
                              fontSize: getFontSize(
                                13,
                              ),
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        61.00,
                      ),
                      top: getVerticalSize(
                        15.00,
                      ),
                      right: getHorizontalSize(
                        112.00,
                      ),
                      bottom: getVerticalSize(
                        13.00,
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
                              1.00,
                            ),
                          ),
                          child: Text(
                            "Customer",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanbold10.copyWith(
                              fontSize: getFontSize(
                                12,
                              ),
                              letterSpacing: 1.00,
                              height: 1.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              2.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              54.00,
                            ),
                            decoration:
                                AppDecoration.textstylerobotoromanregular81,
                            child: Text(
                              "Rs 20,000",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular81
                                  .copyWith(
                                fontSize: getFontSize(
                                  11,
                                ),
                                height: 1.50,
                              ),
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
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  5.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              child: ListView.builder(
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
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  1.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray102,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        9.00,
                      ),
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              6.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              18.00,
                            ),
                            width: getHorizontalSize(
                              135.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.lightBlue50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "27 Dec from Sample user 1",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular102
                                  .copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                height: 1.20,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              2.00,
                            ),
                            top: getVerticalSize(
                              7.00,
                            ),
                          ),
                          child: Text(
                            "Sample-1st running pay...",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.textstylerobotoromanbold122.copyWith(
                              fontSize: getFontSize(
                                13,
                              ),
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        61.00,
                      ),
                      top: getVerticalSize(
                        15.00,
                      ),
                      right: getHorizontalSize(
                        112.00,
                      ),
                      bottom: getVerticalSize(
                        13.00,
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
                              1.00,
                            ),
                          ),
                          child: Text(
                            "Customer",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanbold10.copyWith(
                              fontSize: getFontSize(
                                12,
                              ),
                              letterSpacing: 1.00,
                              height: 1.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              2.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              54.00,
                            ),
                            decoration:
                                AppDecoration.textstylerobotoromanregular81,
                            child: Text(
                              "Rs 20,000",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular81
                                  .copyWith(
                                fontSize: getFontSize(
                                  11,
                                ),
                                height: 1.50,
                              ),
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
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  114.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReceivedPaymentPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5.00,
                          ),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(
                            0.008,
                            0.029,
                          ),
                          end: Alignment(
                            1,
                            1,
                          ),
                          colors: [
                            ColorConstant.red900,
                            ColorConstant.deepOrange400De,
                          ],
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                74.00,
                              ),
                              top: getVerticalSize(
                                19.00,
                              ),
                              bottom: getVerticalSize(
                                18.00,
                              ),
                            ),
                            child: Container(
                              height: getSize(
                                8.00,
                              ),
                              width: getSize(
                                8.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgPlus,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                3.00,
                              ),
                              top: getVerticalSize(
                                15.00,
                              ),
                              right: getHorizontalSize(
                                73.00,
                              ),
                              bottom: getVerticalSize(
                                14.00,
                              ),
                            ),
                            child: Text(
                              "IN",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textstylerobotoromanbold141.copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaidPaymentPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          33.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5.00,
                          ),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(
                            0.008,
                            0.029,
                          ),
                          end: Alignment(
                            1,
                            1,
                          ),
                          colors: [
                            ColorConstant.red900,
                            ColorConstant.deepOrange400De,
                          ],
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                74.00,
                              ),
                              top: getVerticalSize(
                                22.50,
                              ),
                              bottom: getVerticalSize(
                                21.50,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                8.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgMinus,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                3.00,
                              ),
                              top: getVerticalSize(
                                15.00,
                              ),
                              right: getHorizontalSize(
                                60.00,
                              ),
                              bottom: getVerticalSize(
                                14.00,
                              ),
                            ),
                            child: Text(
                              "OUT",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textstylerobotoromanbold141.copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
