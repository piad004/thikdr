import 'package:cashfree_pg/cashfree_pg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:thikdr/ui/cashfree_page.dart';
import 'package:thikdr/ui/estimate/addestimate/add_estimate_page.dart';
import 'package:thikdr/ui/estimate/widgets/estimate_details_item_widget.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/math_utils.dart';
import '../estimatequotation/estimate_quotation.dart';
import 'estimatedetails/estimate_details.dart';
import 'models/estimate_details_item_model.dart';
import 'models/estimate_details_model.dart';

class EstimatePage extends StatefulWidget {
  @override
  State<EstimatePage> createState() => _EstimateState();
}

class _EstimateState extends State<EstimatePage> {
  Rx<EstimateDetailsModel> estimateDetailsModelObj = EstimateDetailsModel().obs;

  @override
  Widget build(BuildContext context) {
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
          "Estimate Details".toUpperCase(),
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
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /* Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(
                  0.007246369447891643,
                  0.0282051559055434,
                ),
                end: Alignment(
                  0.9939613230808374,
                  0.9999999704819924,
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
                        18.00,
                      ),
                      bottom: getVerticalSize(
                        14.00,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          20.00,
                        ),
                        right: getHorizontalSize(
                          99.00,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgVector80,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                59.00,
                              ),
                              top: getVerticalSize(
                                3.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            child: Text(
                              "msg_estimate_prop".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                              AppStyle.textstylerobotobold20.copyWith(
                                fontSize: getFontSize(
                                  20,
                                ),
                                height: 0.80,
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
                    31.00,
                  ),
                  bottom: getVerticalSize(
                    33.00,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      15.00,
                    ),
                    right: getHorizontalSize(
                      15.00,
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
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              2.00,
                            ),
                            right: getHorizontalSize(
                              2.00,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  165.00,
                                ),
                                height: 40,
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    14.00,
                                  ),
                                  top: getVerticalSize(
                                    18.00,
                                  ),
                                  bottom: getVerticalSize(
                                    17.00,
                                  ),
                                ),
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                                decoration:
                                    AppDecoration.textstylerobotoromanbold166,
                                child: TextField(
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.textstylerobotoromanbold166
                                      .copyWith(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    height: 1.00,
                                  ),
                                  decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.only(left: 5, bottom: 10, top: 5, right: 5),
                                      hintText: "Enter Name"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: getVerticalSize(
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    10.00,
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
                                          16.00,
                                        ),
                                        top: getVerticalSize(
                                          14.00,
                                        ),
                                        bottom: getVerticalSize(
                                          14.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Open Estimate",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .textstylerobotoromanbold16
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
                                          14.64,
                                        ),
                                        top: getVerticalSize(
                                          18.00,
                                        ),
                                        right: getHorizontalSize(
                                          13.49,
                                        ),
                                        bottom: getVerticalSize(
                                          17.53,
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            32.00,
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
                                height: getVerticalSize(
                                  45.00,
                                ),
                                width: getHorizontalSize(
                                  WidgetsBinding
                                      .instance!.window.physicalSize.width,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset(
                                        ImageConstant.imgBaseBg,
                                        height: getVerticalSize(
                                          45.00,
                                        ),
                                        width: getHorizontalSize(
                                          WidgetsBinding
                                              .instance!.window.physicalSize.width,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            10.00,
                                          ),
                                          top: getVerticalSize(
                                            10.00,
                                          ),
                                          right: getHorizontalSize(
                                            10.00,
                                          ),
                                          bottom: getVerticalSize(
                                            9.00,
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  7.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  7.00,
                                                ),
                                              ),
                                              child: Text(
                                                "Ram Krisno (Sawrup,)",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstylerobotoromanregular129
                                                    .copyWith(
                                                  fontSize: getFontSize(
                                                    15,
                                                  ),
                                                  height: 0.75,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  110.00,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    40.00,
                                                  ),
                                                ),
                                                border: Border.all(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        10.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        6.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        5.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getSize(
                                                        12.00,
                                                      ),
                                                      width: getSize(
                                                        12.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgCalenderWhite,
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
                                                        8.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        16.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        6.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "09/04/2022",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .textstylerobotoromanregular10
                                                          .copyWith(
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        height: 0.90,
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
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  1.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray101,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              12.00,
                                            ),
                                            top: getVerticalSize(
                                              10.00,
                                            ),
                                            bottom: getVerticalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Total : Rs 762.50",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textstylerobotoromanregular1014
                                                .copyWith(
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              11.00,
                                            ),
                                            right: getHorizontalSize(
                                              28.00,
                                            ),
                                            bottom: getVerticalSize(
                                              9.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Due Date : 09/04/2022",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textstylerobotoromanregular1014
                                                .copyWith(
                                              fontSize: getFontSize(
                                                14,
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
                                        1.00,
                                      ),
                                    ),
                                    child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: estimateDetailsModelObj
                                          .value.estimateDetailsItemList.length,
                                      itemBuilder: (context, index) {
                                        EstimateDetailsItemModel model =
                                            estimateDetailsModelObj.value
                                                .estimateDetailsItemList[index];
                                        return EstimateDetailsItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          377.00,
                        ),
                        margin: EdgeInsets.only(
                          right: getHorizontalSize(
                            2.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray301,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            1.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray50,
                        ),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  12.00,
                                ),
                                right: getHorizontalSize(
                                  12.00,
                                ),
                                top: getVerticalSize(
                                  10.00,
                                ),
                                bottom: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              child: Text(
                                "Balance : Rs 762.50",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstylerobotoromanregular1014.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  height: 1.00,
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      12.00,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Status : ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerobotoromanregular1014.copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Open Estimate",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerobotoromanregular1014.copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.00,
                                      color: ColorConstant.yellow500
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /*Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  10.00,
                                ),
                                right: getHorizontalSize(
                                  73.00,
                                ),
                                bottom: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              child: Text(
                                "Ref No : 1",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstylerobotoromanregular1014.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  height: 1.00,
                                ),
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        36.00,
                                      ),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        45.00,
                                      ),
                                      width: getHorizontalSize(
                                        MediaQuery.of(context).size.width,
                                      ),
                                      decoration: AppDecoration
                                          .textstylerobotoromanbold13,
                                      child: Text(
                                        "Convert To Sale",
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .textstylerobotoromanbold13
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
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddEstimatePage()));
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      80.00,
                                    ),
                                    top: getVerticalSize(
                                      300.00,
                                    ),
                                    right: getHorizontalSize(
                                      80.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.amberA701,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.lime90075,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            23.00,
                                          ),
                                          top: getVerticalSize(
                                            15.00,
                                          ),
                                          bottom: getVerticalSize(
                                            16.00,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
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
                                            child: SvgPicture.asset(
                                              ImageConstant.imgPlus,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            7.00,
                                          ),
                                          top: getVerticalSize(
                                            12.00,
                                          ),
                                          right: getHorizontalSize(
                                            23.00,
                                          ),
                                          bottom: getVerticalSize(
                                            12.00,
                                          ),
                                        ),
                                        child: Text(
                                          "Add Estimate".toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylerobotoromanbold131
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  // WEB Intent
  makePayment() {
    //Replace with actual values
    String orderId = "ORDER_ID";
    String stage = "TEST";
    //String orderAmount = "ORDER_AMOUNT";
    String orderAmount = "10";
    String tokenData = "18441588eef862d4129daf90314481";
    String customerName = "Customer Name";
    String orderNote = "Order_Note";
    String orderCurrency = "INR";
    String appId = "18441588eef862d4129daf90314481";
    String customerPhone = "9089876789";
    String customerEmail = "sample@gmail.com";
    String notifyUrl = "https://test.gocashfree.com/notify";

    Map<String, dynamic> inputParams = {
      "orderId": orderId,
      "orderAmount": orderAmount,
      "customerName": customerName,
      "orderNote": orderNote,
      "orderCurrency": orderCurrency,
      "appId": appId,
      "customerPhone": customerPhone,
      "customerEmail": customerEmail,
      "stage": stage,
      "tokenData": tokenData,
      "notifyUrl": notifyUrl
    };

    CashfreePGSDK.doPayment(inputParams)
        .then((value) => value?.forEach((key, value) {
      print("$key : $value");
      //Do something with the result
if(key=="txStatus"){

  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              AddEstimatePage()));
}
    })
    );
  }
}
