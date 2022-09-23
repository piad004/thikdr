import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:thikdr/ui/estimatequotation/itemestimate/add_item_estimate.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/math_utils.dart';
import '../../projectsummary/payment/addparty/add_party_page.dart';

class AddEstimatePage extends StatefulWidget {
  @override
  State<AddEstimatePage> createState() => _AddEstimateState();
}

class _AddEstimateState extends State<AddEstimatePage> {
  TextEditingController customerNameController = TextEditingController();

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
          "Estimate / Quotation".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppStyle.textstylerobotobold20.copyWith(
            fontSize: getFontSize(
              20,
            ),
            height: 0.80,
          ),
        ),
      ),
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    29.00,
                  ),
                  bottom: getVerticalSize(
                    38.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          2.00,
                        ),
                        left: getHorizontalSize(
                          16.00,
                        ),
                        right: getHorizontalSize(
                          16.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.black90040,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                8.00,
                              ),
                              top: getVerticalSize(
                                23.00,
                              ),
                              bottom: getVerticalSize(
                                23.00,
                              ),
                            ),
                            child: Text(
                              "Ref No.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular165
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
                              left: getHorizontalSize(
                                11.00,
                              ),
                              top: getVerticalSize(
                                17.00,
                              ),
                              bottom: getVerticalSize(
                                17.00,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      11.00,
                                    ),
                                    top: getVerticalSize(
                                      6.00,
                                    ),
                                    bottom: getVerticalSize(
                                      6.00,
                                    ),
                                  ),
                                  child: Text(
                                    " 1",
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
                                      20.64,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    right: getHorizontalSize(
                                      12.49,
                                    ),
                                    bottom: getVerticalSize(
                                      9.53,
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
                          Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                27.00,
                              ),
                              top: getVerticalSize(
                                10.00,
                              ),
                              right: getHorizontalSize(
                                14.00,
                              ),
                              bottom: getVerticalSize(
                                10.00,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      4.00,
                                    ),
                                    top: getVerticalSize(
                                      3.00,
                                    ),
                                    bottom: getVerticalSize(
                                      3.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      22.00,
                                    ),
                                    width: getSize(
                                      22.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgCalendar,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                    top: getVerticalSize(
                                      6.00,
                                    ),
                                    bottom: getVerticalSize(
                                      6.00,
                                    ),
                                  ),
                                  child: Text(
                                    "19.04.2022",
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
                                      44.64,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    right: getHorizontalSize(
                                      12.49,
                                    ),
                                    bottom: getVerticalSize(
                                      9.53,
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
                    Container(
                      height: getVerticalSize(
                        632.00,
                      ),
                      width: getHorizontalSize(
                        377.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          21.00,
                        ),
                        top: getVerticalSize(
                          32.00,
                        ),
                        right: getHorizontalSize(
                          15.00,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  7.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        right: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.gray101,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                15.00,
                                              ),
                                              top: getVerticalSize(
                                                15.00,
                                              ),
                                              right: getHorizontalSize(
                                                14.00,
                                              ),
                                            ),
                                            child:
                                              Container(
                                                height: getVerticalSize(
                                                  40.00,
                                                ),
                                                width: getHorizontalSize(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                ),
                                                child: TextFormField(
                                                  enableInteractiveSelection: false,
                                                  onTap: () { FocusScope.of(context).requestFocus(new FocusNode());
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              AddPartyPage()));},
                                                  controller:
                                                      customerNameController,
                                                  decoration: InputDecoration(
                                                    hintText: "Customer Name",
                                                    hintStyle: AppStyle
                                                        .textstylerobotoromanregular16
                                                        .copyWith(
                                                      fontSize: getFontSize(
                                                        16.0,
                                                      ),
                                                      color:
                                                          ColorConstant.gray500,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          25.00,
                                                        ),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: ColorConstant
                                                            .bluegray100,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          25.00,
                                                        ),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: ColorConstant
                                                            .bluegray100,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        ColorConstant.whiteA700,
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        13.00,
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
                                                    color:
                                                        ColorConstant.gray500,
                                                    fontSize: getFontSize(
                                                      16.0,
                                                    ),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),

                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AddItemEstimatePage()));
                                            },
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    25.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    30.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    25.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      5.00,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant.red201,
                                                    width: getHorizontalSize(
                                                      1.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          94.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          13.00,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          13.00,
                                                        ),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            5.00,
                                                          ),
                                                        ),
                                                        child: Container(
                                                          height: getSize(
                                                            8.00,
                                                          ),
                                                          width: getSize(
                                                            8.00,
                                                          ),
                                                          child:
                                                              SvgPicture.asset(
                                                            ImageConstant
                                                                .imgPlusRed,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          3.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          10.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          93.00,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          9.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "ADD ITEMS(OPTIONAL)",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstylerobotoromanbold133
                                                            .copyWith(
                                                          fontSize: getFontSize(
                                                            13,
                                                          ),
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
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: getVerticalSize(
                                        25.00,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              right: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      ColorConstant.black90040,
                                                  spreadRadius:
                                                      getHorizontalSize(
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                      /*
                                                    margin: EdgeInsets.only(
                                                      bottom: getVerticalSize(
                                                        10.00,
                                                      ),
                                                    ),*/
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            2.00,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  18.00,
                                                                ),
                                                                top:
                                                                    getVerticalSize(
                                                                  20.00,
                                                                ),
                                                                bottom:
                                                                    getVerticalSize(
                                                                  20.00,
                                                                ),
                                                                right:
                                                                    getHorizontalSize(
                                                                  26.00,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: <
                                                                    Widget>[
                                                                  Text(
                                                                    "Total Amount",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        16,
                                                                      ),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      height:
                                                                          1.00,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rs. 00.00",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray802,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        16,
                                                                      ),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      height:
                                                                          1.00,
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
                                                ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          /* Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: getHorizontalSize(
                                235.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  21.00,
                                ),
                                right: getHorizontalSize(
                                  21.00,
                                ),
                                bottom: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.black90040,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Select State",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular169
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        18.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "msg_andaman_nicob".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_andhra_pradesh".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_assam".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_bihar".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_chandigarh".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_chhattisgarh".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "msg_dadra_nagar_h".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_daman_diu".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        15.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_delhi".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_goa".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        17.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_gujarat".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        15.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_haryana".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        14.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "msg_himachal_prades".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
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
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        18.00,
                                      ),
                                      right: getHorizontalSize(
                                        12.00,
                                      ),
                                      bottom: getVerticalSize(
                                        19.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_jammu_kashmir".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular1610
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),*/
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          21.00,
                        ),
                        top: getVerticalSize(
                          10.00,
                        ),
                        right: getHorizontalSize(
                          16.00,
                        ),
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
                              (MediaQuery.of(context).size.width / 2) - 10,
                            ),
                            decoration:
                                AppDecoration.textstylerobotoromanbold13,
                            child: Text(
                              "Save & New".tr,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textstylerobotoromanbold13.copyWith(
                                fontSize: getFontSize(
                                  15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              45.00,
                            ),
                            width: getHorizontalSize(
                              (MediaQuery.of(context).size.width / 2) - 10,
                            ),
                            decoration:
                                AppDecoration.textstylerobotoromanbold13,
                            child: Text(
                              "Save",
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textstylerobotoromanbold13.copyWith(
                                fontSize: getFontSize(
                                  15,
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
          ],
        ),
      ),
    ));
  }
}
