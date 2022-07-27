
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:thikdr/ui/estimatequotation/itemestimate/items/items.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/math_utils.dart';

class AddItemEstimatePage extends StatefulWidget {
  @override
  State<AddItemEstimatePage> createState() => _AddItemEstimateState();
}

class _AddItemEstimateState extends State<AddItemEstimatePage> {

  TextEditingController itemNameController = TextEditingController();

  TextEditingController ratePriceUnitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
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
    "Items To Estimate/Quotation".toUpperCase(),
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
    bottomSheet:
      Padding(
        padding: EdgeInsets.only(
          bottom: getVerticalSize(
            10.00,
          ),
          left: getHorizontalSize(10),
          right: getHorizontalSize(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.center,
              height: getVerticalSize(
                45.00,
              ),
              width: getHorizontalSize(
                MediaQuery.of(context).size.width/2,
              ),
              decoration:
              AppDecoration.textstylerobotoromanbold13,
              child: Text(
                "Save & new",
                textAlign: TextAlign.left,
                style: AppStyle.textstylerobotoromanbold13
                    .copyWith(
                  fontSize: getFontSize(
                    15,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ItemsPage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: getVerticalSize(
                  45.00,
                ),
                width: getHorizontalSize(
                  MediaQuery.of(context).size.width/2,
                ),
                decoration:
                AppDecoration.textstylerobotoromanbold13,
                child: Text(
                  "Save",
                  textAlign: TextAlign.left,
                  style: AppStyle.textstylerobotoromanbold13
                      .copyWith(
                    fontSize: getFontSize(
                      15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    body: Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*Container(
            width: double.infinity,
            decoration: BoxDecoration(
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: size.width,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        17.00,
                      ),
                      bottom: getVerticalSize(
                        11.00,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          20.00,
                        ),
                        right: getHorizontalSize(
                          13.00,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                3.00,
                              ),
                            ),
                            child: Container(
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgBack,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                7.00,
                              ),
                              top: getVerticalSize(
                                4.00,
                              ),
                              bottom: getVerticalSize(
                                4.00,
                              ),
                            ),
                            child: Text(
                              "msg_items_to_estima".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              AppStyle.textstylerobotobold19.copyWith(
                                fontSize: getFontSize(
                                  19,
                                ),
                                height: 0.84,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                15.00,
                              ),
                              top: getVerticalSize(
                                2.00,
                              ),
                              bottom: getVerticalSize(
                                2.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgPdf,
                                fit: BoxFit.fill,
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
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgPlus,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),*/
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  24.00,
                ),
                bottom: getVerticalSize(
                  25.00,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    21.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            1.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray101,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  14.00,
                                ),
                                top: getVerticalSize(
                                  15.00,
                                ),
                                right: getHorizontalSize(
                                  14.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  46.00,
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width,
                                ),
                                child: TextFormField(
                                  controller: itemNameController,
                                  decoration: InputDecoration(
                                    hintText: "Item Name",
                                    hintStyle: AppStyle
                                        .textstylerobotoromanregular16
                                        .copyWith(
                                      fontSize: getFontSize(
                                        16.0,
                                      ),
                                      color: ColorConstant.gray500,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25.00,
                                        ),
                                      ),
                                      borderSide: BorderSide(
                                        color: ColorConstant.bluegray100,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25.00,
                                        ),
                                      ),
                                      borderSide: BorderSide(
                                        color: ColorConstant.bluegray100,
                                        width: 1,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: ColorConstant.whiteA700,
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        10.00,
                                      ),
                                      bottom: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      16.0,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      MediaQuery.of(context).size.width-210,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        14.00,
                                      ),
                                    ),
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        10.00,
                                      ),
                                      bottom: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                    decoration: AppDecoration
                                        .textstylerobotoromanregular166,
                                    child: Text(
                                      "Quantity",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular166
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        14.00,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.bluegray100,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              16.00,
                                            ),
                                            top: getVerticalSize(
                                              10.00,
                                            ),
                                            bottom: getVerticalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Unit",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textstylerobotoromanregular16
                                                .copyWith(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              116.64,
                                            ),
                                            top: getVerticalSize(
                                              14.00,
                                            ),
                                            right: getHorizontalSize(
                                              12.49,
                                            ),
                                            bottom: getVerticalSize(
                                              13.53,
                                            ),
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              8.47,
                                            ),
                                            width: getHorizontalSize(
                                              15.87,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  14.00,
                                ),
                                top: getVerticalSize(
                                  10.00,
                                ),
                                right: getHorizontalSize(
                                  14.00,
                                ),
                                bottom: getVerticalSize(
                                  13.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  36.00,
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width,
                                ),
                                child: TextFormField(
                                  controller:
                                  ratePriceUnitController,
                                  decoration: InputDecoration(
                                    hintText: "Rate(Price/Unit)",
                                    hintStyle: AppStyle
                                        .textstylerobotoromanregular16
                                        .copyWith(
                                      fontSize: getFontSize(
                                        16.0,
                                      ),
                                      color: ColorConstant.gray500,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25.00,
                                        ),
                                      ),
                                      borderSide: BorderSide(
                                        color: ColorConstant.bluegray100,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25.00,
                                        ),
                                      ),
                                      borderSide: BorderSide(
                                        color: ColorConstant.bluegray100,
                                        width: 1,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: ColorConstant.whiteA700,
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        10.00,
                                      ),
                                      bottom: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      16.0,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            28.00,
                          ),
                          right: getHorizontalSize(
                            1.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.gray400A8,
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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  11.00,
                                ),
                                top: getVerticalSize(
                                  14.00,
                                ),
                                right: getHorizontalSize(
                                  11.00,
                                ),
                              ),
                              child: Text(
                                "Total & Taxes",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstylerobotoromanbold122
                                    .copyWith(
                                  fontSize: getFontSize(
                                    15,
                                  ),
                                  height: 0.83,
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                2.00,
                              ),
                              width: getHorizontalSize(
                                double.infinity,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  11.00,
                                ),
                                top: getVerticalSize(
                                  7.00,
                                ),
                                right: getHorizontalSize(
                                  11.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray301,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    11.00,
                                  ),
                                  top: getVerticalSize(
                                    13.00,
                                  ),
                                  right: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Subtotal (Rate x Qty)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular128
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.42,
                                      ),
                                    ),
                                    Text(
                                      "Rs.00.00",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular128
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.42,
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
                                    11.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    9.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          3.00,
                                        ),
                                        bottom: getVerticalSize(
                                          6.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Tax %",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .textstylerobotoromanregular128
                                            .copyWith(
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          height: 1.42,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius:
                                            BorderRadius.circular(
                                              getHorizontalSize(
                                                25.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color:
                                              ColorConstant.bluegray100,
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    7.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    5.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    5.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "None",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylerobotoromanregular1210
                                                      .copyWith(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    height: 1.33,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    27.19,
                                                  ),
                                                  top: getVerticalSize(
                                                    12.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    7.06,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    10.40,
                                                  ),
                                                ),
                                                child: Container(
                                                  height: getVerticalSize(
                                                    4,
                                                  ),
                                                  width: getHorizontalSize(
                                                    7,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgArrowDown,
                                                    fit: BoxFit.fill,
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
                                          ),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(
                                              26.00,
                                            ),

                                            decoration: AppDecoration
                                                .textstylerobotoromanregular1211,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                right: getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child:Text(
                                              "Rs. 00.00",
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textstylerobotoromanregular1211
                                                  .copyWith(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                height: 1.42,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ),
                                      ],
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
                                    11.00,
                                  ),
                                  top: getVerticalSize(
                                    21.00,
                                  ),
                                  right: getHorizontalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    13.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular123
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.42,
                                      ),
                                    ),
                                    Text(
                                      "Rs.00.00",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular123
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.42,
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
              ),
            ),
          ),
        ],
      ),
    ),

      ),
    );
  }
}