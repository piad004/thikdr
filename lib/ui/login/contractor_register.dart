import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thikdr/ui/home/home.dart';
import 'package:thikdr/ui/login/login.dart';
import 'package:thikdr/ui/login/uses_type_model.dart';
import 'package:thikdr/utils/color_constant.dart';
import 'package:thikdr/utils/image_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/math_utils.dart';

class ContractorRegisterPage extends StatefulWidget {
  @override
  State<ContractorRegisterPage> createState() => _ContractorRegisterState();
}

class _ContractorRegisterState extends State<ContractorRegisterPage> {
  int radioGroup = 1;

  int radioGroup1 = 1;
  TextEditingController enterNameCompController = TextEditingController();

  TextEditingController enterWhatsappController = TextEditingController();

  TextEditingController selectExpatriaController = TextEditingController();

  TextEditingController selectWorkLocController = TextEditingController();

  TextEditingController enterGSTINnumController = TextEditingController();

  TextEditingController enterPANcardController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Contractor Register',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: EdgeInsets.only(),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        16.00,
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
                        Padding(
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
                          ),
                          child: Container(
                            height: getVerticalSize(
                              54.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            child: TextFormField(
                              controller: enterNameCompController,
                              decoration: InputDecoration(
                                hintText: "Enter Name/Company".tr,
                                hintStyle: AppStyle.textstylerobotoromanbold16
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
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      7.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgUser,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 28,
                                  minHeight: getSize(58),
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                21.00,
                              ),
                              left: 20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
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
                                      "Whatsapp number same register number?".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanbold161
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              21.00,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Radio(
                                                activeColor:
                                                ColorConstant.redA400,
                                                value: 1,
                                                groupValue: radioGroup,
                                                onChanged: (value) {},
                                              ),
                                              Text(
                                                "Yes".tr,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanregular13
                                                    .copyWith(
                                                  fontSize: getFontSize(
                                                    13,
                                                  ),
                                                  height: 1.23,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              22.00,
                                            ),
                                            right: getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Radio(
                                                value: 0,
                                                groupValue: radioGroup1,
                                                onChanged: (value) {},
                                              ),
                                              Text(
                                                "No".tr,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanregular13
                                                    .copyWith(
                                                  fontSize: getFontSize(
                                                    13,
                                                  ),
                                                  height: 1.23,
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
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            child: TextFormField(
                              controller: enterWhatsappController,
                              decoration: InputDecoration(
                                hintText: "Enter Whatsapp Number".tr,
                                hintStyle: AppStyle.textstylerobotoromanbold16
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
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      7.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      38.00,
                                    ),
                                    width: getSize(
                                      38.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgWhatsapp,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    28.00,
                                  ),
                                  minHeight: getSize(
                                    58.00,
                                  ),
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              21.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              19.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            child: TextFormField(
                              controller: selectExpatriaController,
                              decoration: InputDecoration(
                                hintText: "Select Expatriates Skill Options".tr,
                                hintStyle: AppStyle.textstylerobotoromanbold16
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
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      7.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      38.00,
                                    ),
                                    width: getSize(
                                      38.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgBag,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    28.00,
                                  ),
                                  minHeight: getSize(
                                    58.00,
                                  ),
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                    right: getHorizontalSize(
                                      26.49,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      8.47,
                                    ),
                                    width: getSize(
                                      15.87,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgArrowDown,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    8.47,
                                  ),
                                  minHeight: getSize(
                                    8.47,
                                  ),
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              44.00,
                            ),
                            right: getHorizontalSize(
                              44.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray100,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    15.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                                child: Text(
                                  "Skill (Choose one or more)".tr,
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
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    14.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_aluminium_glass".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_carpenter_furni".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_electrician".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_excavation_and".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_fabricator".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_facility_manage".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_fire_fighting".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    15.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_flooring".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
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
                              10.00,
                            ),
                            top: getVerticalSize(
                              15.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            child: TextFormField(
                              controller: selectWorkLocController,
                              decoration: InputDecoration(
                                hintText: "Select Work Location".tr,
                                hintStyle: AppStyle.textstylerobotoromanbold16
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
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      7.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      38.00,
                                    ),
                                    width: getSize(
                                      38.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgLocation,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    38.00,
                                  ),
                                  minHeight: getSize(58),
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                    right: getHorizontalSize(
                                      26.49,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      8.47,
                                    ),
                                    width: getSize(
                                      15.87,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgArrowDown,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    8.47,
                                  ),
                                  minHeight: getSize(
                                    8.47,
                                  ),
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              42.00,
                            ),
                            right: getHorizontalSize(
                              42.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray100,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    15.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                                child: Text(
                                  "Choose your location".tr,
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
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    14.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_kolkata".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_delhi".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_mumbai".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    11.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    18.00,
                                  ),
                                ),
                                width: getHorizontalSize(
                                  MediaQuery.of(context).size.width-100,
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_bangalore".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                27.00,
                              ),
                              top: getVerticalSize(
                                20.00,
                              ),
                              right: getHorizontalSize(
                                22.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Do you have GSTIN number registered?".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.textstylerobotoromanbold161
                                      .copyWith(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    height: 1.00,
                                  ),
                                ),
                                 Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          5.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                21.00,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Radio(
                                                  activeColor:
                                                  ColorConstant.redA400,
                                                  value: 1,
                                                  groupValue: radioGroup,
                                                  onChanged: (value) {},
                                                ),
                                                Text(
                                                  "Yes".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylerobotoromanregular13
                                                      .copyWith(
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    height: 1.23,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                22.00,
                                              ),
                                              right: getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Radio(
                                                  value: 0,
                                                  groupValue: radioGroup1,
                                                  onChanged: (value) {},
                                                ),
                                                Text(
                                                  "No".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylerobotoromanregular13
                                                      .copyWith(
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    height: 1.23,
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
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              18.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            child: TextFormField(
                              controller: enterGSTINnumController,
                              decoration: InputDecoration(
                                hintText: "Enter GSTIN number registered Number".tr,
                                hintStyle: AppStyle.textstylerobotoromanbold16
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
                                    17.00,
                                  ),
                                  top: getVerticalSize(
                                    20.00,
                                  ),
                                  bottom: getVerticalSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            child: TextFormField(
                              controller: enterPANcardController,
                              decoration: InputDecoration(
                                hintText: "Enter PAN card number".tr,
                                hintStyle: AppStyle.textstylerobotoromanbold16
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
                                    17.00,
                                  ),
                                  top: getVerticalSize(
                                    20.00,
                                  ),
                                  bottom: getVerticalSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              26.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: InkWell(
                            onTap: (){
                             /* Get.toNamed(
                                  AppRoutes.homeUiForContractorScreen
                              );*/
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => HomePage()));
                            },
                            child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              MediaQuery.of(context).size.width,
                            ),
                            decoration:
                            AppDecoration.textstylerobotoromanbold13,
                            child: Text(
                              "CONTINUE".tr,
                              textAlign: TextAlign.left,
                              style:
                              AppStyle.textstylerobotoromanbold13.copyWith(
                                fontSize: getFontSize(
                                  15,
                                ),
                              ),
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
    );
  }
}
