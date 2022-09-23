import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:thikdr/ui/estimatequotation/itemestimate/items/items.dart';

import '../../../network/webservice.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/math_utils.dart';
import '../../../utils/pref_utils.dart';
import '../estimate_quotation.dart';

class AddItemEstimatePage extends StatefulWidget {
  @override
  State<AddItemEstimatePage> createState() => _AddItemEstimateState();
}

class _AddItemEstimateState extends State<AddItemEstimatePage> {

  TextEditingController itemNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController ratePriceUnitController = TextEditingController();
  var taxPercent="None";
  var tax="0.0";
  var subTotal="0.0";
  var totalAmt="0.0";
  String unit="Unit 1";
  final items = [
    'Unit 1',
    'Unit 2',
    'Unit 3',
    'Unit 4',
    'Unit 5',
  ];

  @override
  void initState() {
    super.initState();


   /* ratePriceUnitController.addListener(() {
      if(ratePriceUnitController.text.toString().isNotEmpty && quantityController.text.toString().isNotEmpty){
        setState(() {

          subTotal =
              (double.parse(ratePriceUnitController.text.toString())*int.parse(quantityController.text)).toString();

        });
      }
    });*/

  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    quantityController.dispose();
    ratePriceUnitController.dispose();
    super.dispose();
  }

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
            "Add Items To Estimate/Quotation".toUpperCase(),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.textstylerobotobold20.copyWith(
              fontSize: getFontSize(
                20,
              ),
              height: 1,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: ColorConstant.whiteA700,
        bottomSheet: Padding(
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
                  MediaQuery.of(context).size.width / 2,
                ),
                decoration: AppDecoration.textstylerobotoromanbold13,
                child: Text(
                  "Save & new",
                  textAlign: TextAlign.left,
                  style: AppStyle.textstylerobotoromanbold13.copyWith(
                    fontSize: getFontSize(
                      15,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  addEstimateItem();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    45.00,
                  ),
                  width: getHorizontalSize(
                    MediaQuery.of(context).size.width / 2,
                  ),
                  decoration: AppDecoration.textstylerobotoromanbold13,
                  child: Text(
                    "Save",
                    textAlign: TextAlign.left,
                    style: AppStyle.textstylerobotoromanbold13.copyWith(
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
                                        height: getVerticalSize(
                                          46.00,
                                        ),
                                        width: getHorizontalSize(
                                          MediaQuery.of(context).size.width-220,
                                        ),
                                        margin: EdgeInsets.only(left: 15),
                                        child: TextFormField(
                                          controller: quantityController,
                                          onChanged: (text) {
                                            if(text.toString().isNotEmpty && ratePriceUnitController.text.toString().isNotEmpty){
                                              setState(() {

                                                subTotal =
                                                    (double.parse(text.toString())*int.parse(ratePriceUnitController.text)).toString();
totalAmt=(double.parse(subTotal)+double.parse(tax)).toString();
                                              });
                                            }
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: "Quantity",
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
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: getHorizontalSize(
                                            20.00,
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
                                            Container(
                                              height: 30,
                                              width: 120,
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                right: getHorizontalSize(
                                                  10.00,
                                                ),
                                                top: getVerticalSize(
                                                  10.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child:DropdownButtonHideUnderline(
                                                child: DropdownButton2(
                                                  isExpanded: true,
                                                  hint: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.list,
                                                        size: 0,
                                                        color: Colors.yellow,
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'Select Item',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.normal,
                                                            color: Colors.black,
                                                          ),
                                                          overflow: TextOverflow.ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  items: items
                                                      .map((item) => DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.black,
                                                      ),
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ))
                                                      .toList(),
                                                  value: unit,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      unit = value as String;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons.arrow_forward_ios_outlined,
                                                  ),
                                                  iconSize: 0,
                                                  iconEnabledColor: Colors.yellow,
                                                  iconDisabledColor: Colors.grey,
                                                  buttonHeight: 50,
                                                  buttonWidth: 70,
                                                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                                                 /* buttonDecoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(14),
                                                    border: Border.all(
                                                      color: Colors.black26,
                                                    ),
                                                    color: Colors.redAccent,
                                                  ),*/
                                                  buttonElevation: 2,
                                                  itemHeight: 40,
                                                  itemPadding: const EdgeInsets.only(left: 14, right: 1),
                                                  dropdownMaxHeight: 200,
                                                  dropdownWidth: 200,
                                                  dropdownPadding: null,
                                                  dropdownDecoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(14),
                                                    color: Colors.white,
                                                  ),
                                                  dropdownElevation: 8,
                                                  scrollbarRadius: const Radius.circular(40),
                                                  scrollbarThickness: 6,
                                                  scrollbarAlwaysShow: true,
                                                  offset: const Offset(-20, 0),
                                                ),
                                              ),
                                              /*Text(
                                                unit,
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
                                              ),*/
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.64,
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
                                      controller: ratePriceUnitController,
                                      onChanged: (text) {
                                        if(text.toString().isNotEmpty && quantityController.text.toString().isNotEmpty){
                                          setState(() {

                                            subTotal =
                                                (double.parse(text.toString())*int.parse(quantityController.text)).toString();
                                            totalAmt=(double.parse(subTotal)+double.parse(tax)).toString();
                                          });
                                        }
                                      },
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
                                      keyboardType: TextInputType.number,
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
                                          "₹ "+subTotal,
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
                                            InkWell(
                                              onTap:(){
                                                openBottomSheet();
                                                }
                                             ,
                                              child:
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
                                                      taxPercent,
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
                                            ),),
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
                                                  child: Text(
                                                    "₹ "+ tax,
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
                                          "₹ "+totalAmt,
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

  void _modalBottomSheetMenu(){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: 350.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child: new Center(
                  child: new Text("This is a modal sheet"),
                )),
          );
        }
    );
  }

  void openBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    21.00,
                  ),
                  right: getHorizontalSize(
                    20.00,
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
                      "Tax %",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        fontWeight: FontWeight.bold,
                        height: 1.40,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child:
                    Container(
                      height: getVerticalSize(
                        10,
                      ),
                      width: getHorizontalSize(
                        15,
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

          InkWell(
          onTap: (){
          Navigator.pop(context);
          if(double.parse(subTotal)>0) {
          setState(() {
            taxPercent = "None-0.0%";
            tax = ((double.parse(subTotal) * 0.0) / 100).toString();
            totalAmt=(double.parse(subTotal)+double.parse(tax)).toString();
          });
          }else
            showMsg("Please fill quantity and rate price!");
          },
          child:
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  right: getHorizontalSize(
                    50.00,
                  ),
                  bottom: getVerticalSize(
                    8.00,
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
                      "None",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                    Text(
                      "0.0 %",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          InkWell(
          onTap: (){
          Navigator.pop(context);
          if(double.parse(subTotal)>0) {
          setState(() {
            taxPercent = "Exempted-0.0%";
            tax = ((double.parse(subTotal) * 0.0) / 100).toString();
            totalAmt=(double.parse(subTotal)+double.parse(tax)).toString();
          });
          }else
            showMsg("Please fill quantity and rate price!");
          },
          child:
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  right: getHorizontalSize(
                    50.00,
                  ),
                  bottom: getVerticalSize(
                    8.00,
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
                      "Exempted",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                    Text(
                      "0.0 %",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          InkWell(
          onTap: (){
          Navigator.pop(context);
          if(double.parse(subTotal)>0) {
          setState(() {
            taxPercent = "Gst@0%-0.0%";
            tax = ((double.parse(subTotal) * 0.0) / 100).toString();
            totalAmt=(double.parse(subTotal)+double.parse(tax)).toString();
          });
          }else
            showMsg("Please fill quantity and rate price!");
          },
          child:
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  right: getHorizontalSize(
                    50.00,
                  ),
                  bottom: getVerticalSize(
                    8.00,
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
                      "Gst@0%",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                    Text(
                      "0.0 %",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          InkWell(
          onTap: (){
          Navigator.pop(context);
          if(double.parse(subTotal)>0) {
          setState(() {
            taxPercent = "Gst@0.25%-0.25%";
            tax = ((double.parse(subTotal) * 0.25) / 100).toString();
            totalAmt=(double.parse(subTotal)+double.parse(tax)).toString();
          });
          }else
            showMsg("Please fill quantity and rate price!");
          },
          child:
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  right: getHorizontalSize(
                    50.00,
                  ),
                  bottom: getVerticalSize(
                    40.00,
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
                      "Gst@0.25%",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                    Text(
                      "0.25 %",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylerobotoromanregular123
                          .copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.40,
                      ),
                    ),
                  ],
                ),
              ),
          ),
             /* ListTile(
                leading: new Icon(Icons.photo),
                title: new Text('Photo'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.music_note),
                title: new Text('Music'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.share),
                title: new Text('Share'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),*/
            ],
          );
        });
  }

  void addEstimateItem() async {
     if (itemNameController.text.toString().isEmpty) {
      showMsg("Item name empty!");
    }
     else if (quantityController.text.toString().isEmpty) {
      showMsg("Quantity empty!");
    }
     else if (ratePriceUnitController.text.toString().isEmpty) {
      showMsg("Rate price empty!");
    }
    else if (!await InternetConnectionChecker().hasConnection) {
      showMsg("Check internet connection!");
    } else {
      getRequestAddEstimateItem();
    }
  }

  Future<void> getRequestAddEstimateItem() async {
    try {
      var token = await PrefUtils().getPreferencesData("token");

      var leadModel = await Webservice().requestEstimateItemAdd(token.toString(), itemNameController.text.toString(),
          quantityController.text.toString(), ratePriceUnitController.text.toString(), unit, subTotal,tax,totalAmt);

      if (!leadModel.error) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EstimateQuotationPage()));
      }
      showMsg(leadModel.message);

      print('buy leads response : ${jsonEncode(leadModel)}');
    } catch (e) {
      showMsg(e.toString());
    }
  }


  void showMsg(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

}

