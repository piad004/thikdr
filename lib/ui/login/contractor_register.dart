import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:multi_select_flutter/dialog/mult_select_dialog.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:thikdr/ui/home/home.dart';
import 'package:thikdr/utils/color_constant.dart';
import 'package:thikdr/utils/image_constant.dart';

import '../../network/webservice.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/dialog/dialog_page.dart';
import '../../utils/math_utils.dart';
import '../../utils/pref_utils.dart';
import 'mvvm_login/check_user_model.dart';
import 'skill_model.dart';

class ContractorRegisterPage extends StatefulWidget {
  String mobile = "";
  String id = "";

  ContractorRegisterPage({required this.id,required this.mobile});

  @override
  State<ContractorRegisterPage> createState() => _ContractorRegisterState();
}

class _ContractorRegisterState extends State<ContractorRegisterPage> {
  int radioGroup = 1;
  int radioGroup1 = 1;
  int isWhatsappYes = 1;
  int isWhatsappNo = 0;
  int isWhatsapp = 1;
  int isGstinYes = 1;
  int isGstinNo = 0;
  int isGstin = 1;

  TextEditingController enterNameCompController = TextEditingController();
  TextEditingController enterWhatsappController = TextEditingController();
  TextEditingController selectExpatriaController = TextEditingController();
  TextEditingController selectWorkLocController = TextEditingController();
  TextEditingController enterGSTINnumController = TextEditingController();
  TextEditingController enterPANcardController = TextEditingController();

  ////////////////
  static List<SkillList> _skillModels = [
    /* SkillModel(1, "Skill 1"),
    SkillModel(2, "Skill 2"),
    SkillModel(3, "Skill 3"),
    SkillModel(4, "Skill 4"),
    SkillModel(5, "Skill 5"),
    SkillModel(6, "Skill 6"),
    SkillModel(7, "Skill 7"),
    SkillModel(8, "Skill 8"),
    SkillModel(9, "Skill 9"),
    SkillModel(10, "Skill 10"),*/
  ];
  static List<SkillList> _city = [
    /*SkillModel(1, "Bangalore"),
    SkillModel(2, "Chennai"),
    SkillModel(3, "Delhi"),
    SkillModel(4, "Kolkata"),
    SkillModel(5, "Mumbai"),
    SkillModel(6, "Nagpur"),
    SkillModel(7, "Pune"),*/
  ];

  var _items = _skillModels
      .map((skillModel) =>
          MultiSelectItem<SkillList>(skillModel, skillModel.name.toString()))
      .toList();
  List<SkillList> _selectedSkillModels = [];

  var _itemsCity = _city
      .map((skillModel) =>
          MultiSelectItem<SkillList>(skillModel, skillModel.name.toString()))
      .toList();
  List<SkillList> _selectedCity = [];

  //////////////

  @override
  void initState(){
    super.initState();

  getData();
}

void getData() async{
    if (!await InternetConnectionChecker().hasConnection) {
    showMsg("Check internet connection!");
  }else {
    getSkills();
    getLanguage();
  }
  }

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
                        hintStyle: AppStyle.textstylerobotoromanbold16.copyWith(
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
                            child: Image.asset(
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
                              style:
                              AppStyle.textstylerobotoromanbold161.copyWith(
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                        activeColor: ColorConstant.redA400,
                                        value: isWhatsappYes,
                                        groupValue: radioGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            isWhatsappYes = 1;
                                            isWhatsappNo = 0;
                                            isWhatsapp = 1;
                                          });
                                        },
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
                                        value: isWhatsappNo,
                                        groupValue: radioGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            isWhatsappYes = 0;
                                            isWhatsappNo = 1;
                                            isWhatsapp = 0;
                                          });
                                        },
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
                Visibility(
                  visible: isWhatsapp==1?false:true,
                  child:
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
                          hintStyle: AppStyle.textstylerobotoromanbold16.copyWith(
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
                    child: TextField(
                      enableInteractiveSelection: false,
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        _showMultiSelect(context);
                      },
                      controller: selectExpatriaController,
                      decoration: InputDecoration(
                        hintText: "Select Expatriates Skill Options".tr,
                        hintStyle: AppStyle.textstylerobotoromanbold16.copyWith(
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
                /* Container(
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
                        ),*/
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
                      enableInteractiveSelection: false,
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        _showMultiSelectCity(context);
                      },
                      controller: selectWorkLocController,
                      decoration: InputDecoration(
                        hintText: "Select Work Location".tr,
                        hintStyle: AppStyle.textstylerobotoromanbold16.copyWith(
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
                /* Container(
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
                        ),*/
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
                          style: AppStyle.textstylerobotoromanbold161.copyWith(
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                        activeColor: ColorConstant.redA400,
                                        value: isGstinYes,
                                        groupValue: radioGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            isGstinYes = 1;
                                            isGstinNo = 0;
                                            isGstin = 1;
                                          });
                                        },
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
                                        value: isGstinNo,
                                        groupValue: radioGroup1,
                                        onChanged: (value) {
                                          setState(() {
                                            isGstinYes = 0;
                                            isGstinNo = 1;
                                            isGstin = 0;
                                          });
                                        },
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
                Visibility(
                  visible: isGstin == 1 ? true : false,
                  child:
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
                          hintStyle: AppStyle.textstylerobotoromanbold16.copyWith(
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
                ),
                Visibility(
                  visible: isGstin == 0 ? true : false,
                  child: Padding(
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
                          hintStyle:
                          AppStyle.textstylerobotoromanbold16.copyWith(
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      50.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: InkWell(
                    onTap: () async{
                      if (enterNameCompController.text.toString().isEmpty)
                        showMsg("Name should not empty!");
                      else if (isWhatsapp==0  && enterWhatsappController.text.toString().length==0)
                        showMsg("Whatsapp number should not empty!");
                      else if (_selectedSkillModels.length == 0)
                        showMsg("Choose skill!");
                      else if (_selectedCity.length == 0)
                        showMsg("Choose work location!");
                      else if (isGstin==1 && enterGSTINnumController.text.toString().isEmpty)
                        showMsg("GSTIN should not empty!");
                      else if (isGstin==0  && enterPANcardController.text.toString().isEmpty)
                        showMsg("PAN should not empty!");
                      else if (!await InternetConnectionChecker().hasConnection) {
                        showMsg("Check internet connection!");
                      }
                      else {
                        progressDialogue(context);
                        contractorRegister();
                      }
                      /* Get.toNamed(
                                  AppRoutes.homeUiForContractorScreen
                              );*/
                      /* Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => HomePage()));*/
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        58.00,
                      ),
                      width: getHorizontalSize(
                        MediaQuery.of(context).size.width,
                      ),
                      decoration: AppDecoration.textstylerobotoromanbold13,
                      child: Text(
                        "CONTINUE".tr,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstylerobotoromanbold13.copyWith(
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
    );
  }


  Future<void> contractorRegister() async {
    try{
      CheckUserModel checkUserModel = await Webservice()
          .requestContractorRegistration(
          widget.id, "",
          enterNameCompController.text.toString(),
          widget.mobile,
          enterNameCompController.text.toString(),
          isWhatsapp==1?"":widget.mobile,isWhatsapp==1?"Yes":"No",
          jsonEncode(_selectedSkillModels),
          jsonEncode(_selectedCity),
          isGstin==1?"Yes":"No",
          enterGSTINnumController.text.toString(),
          enterPANcardController.text.toString());

      Navigator.pop(context);

      showMsg(checkUserModel.message);

      if (!checkUserModel.error) {
        PrefUtils().savePreferencesData("token",checkUserModel.data?.token.toString());
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false);
      }

      print('response : ${jsonEncode(checkUserModel)}');
    }catch(e){
      showMsg(e.toString());
    }
  }

  Future<void> getSkills() async {
    try{
      SkillModel skillModel = await Webservice().requestSkillList();

      if (!skillModel.error!) {
        setState(() {
          _skillModels = skillModel.data!.list!;
          _items = _skillModels
              .map((skillModel) =>
              MultiSelectItem<SkillList>(skillModel, skillModel.name.toString()))
              .toList();
        });
      }

      print('response : ${jsonEncode(skillModel)}');
    }
    catch(e){
    }
  }

  Future<void> getLanguage() async {
    try {
      SkillModel skillModel = await Webservice().requestLanguageList();

      if (!skillModel.error!) {
        setState(() {
          _city = skillModel.data!.list!;
          _itemsCity = _city
              .map((skillModel) =>
              MultiSelectItem<SkillList>(
                  skillModel, skillModel.name.toString()))
              .toList();
        });
      }

      print('response : ${jsonEncode(skillModel)}');
    }catch(e){
    }
  }

  void _showMultiSelect(BuildContext context) async {
    await showDialog(
      context: context,
      barrierLabel: "Skill (Choose one or more)",
      builder: (ctx) {
        return MultiSelectDialog(
          items: _items,
          searchable: true,
          searchHint: "Skill",
          initialValue: _selectedSkillModels,
          onConfirm: (values) {
            _selectedSkillModels=(values as List<SkillList>);
            for (var i = 0; i < _selectedSkillModels.length; i++) {
              print("object $i " + _selectedSkillModels[i].name.toString());
            }
            print("json " + jsonEncode(_selectedSkillModels));
          },
        );
      },
    );
  }

  void _showMultiSelectCity(BuildContext context) async {
    await showDialog(
      context: context,
      barrierLabel: "Choose your location",
      builder: (ctx) {
        return MultiSelectDialog(
          items: _itemsCity,
          searchable: true,
          searchHint: "City",
          initialValue: _selectedCity,
          onConfirm: (values) {
            _selectedCity=(values as List<SkillList>);
            for (var i = 0; i < _selectedCity.length; i++) {
              print("object $i " + _selectedCity[i].name.toString());
            }
            print("json " + jsonEncode(_selectedCity));
          },
        );
      },
    );
  }

  void showMsg(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return DialogPage(message);
        });
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
