import 'package:flutter/material.dart';
import 'package:thikdr/ui/leads/leadstab/leads_tab.dart';
import 'package:thikdr/ui/login/login.dart';
import 'package:thikdr/ui/login/uses_type_model.dart';
import 'package:thikdr/utils/color_constant.dart';
import 'package:thikdr/utils/image_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';

class LabourRegisterPage extends StatefulWidget {
  @override
  State<LabourRegisterPage> createState() => _LabourRegisterState();
}

class _LabourRegisterState extends State<LabourRegisterPage> {

  int radioGroupMale = 1;

  int radioGroupFemale = 1;

  TextEditingController enterNameController = TextEditingController();

  TextEditingController ageEnterageController = TextEditingController();

  TextEditingController enterDailyRatController = TextEditingController();

  TextEditingController selectExpatriaController = TextEditingController();

  TextEditingController selectWorkLocController = TextEditingController();


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
            'Labour Register',
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
                      top: 16,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 0,
                            right: 15,
                          ),
                          child: Container(
                            height: 44,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 30,
                            child: TextFormField(
                              controller: enterNameController,
                              decoration: InputDecoration(
                                hintText: "Enter name",
                                hintStyle: AppStyle.textstylerobotoromanbold16
                                    .copyWith(
                                  fontSize: 16,
                                  color: ColorConstant.gray500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 7,
                                    right: 10,
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
                                  minHeight: 48,
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: 16,
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
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 21,
                                  ),
                                  child: Row(
                                    children: [
                                      Radio(
                                        activeColor: ColorConstant.redA400,
                                        value: 1,
                                        groupValue: radioGroupMale,
                                        onChanged: (value) {},
                                      ),
                                      Text(
                                        "Male",
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .textstylerobotoromanregular13
                                            .copyWith(
                                          fontSize: 13,
                                          height: 1.23,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 14,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 0,
                                        groupValue: radioGroupFemale,
                                        onChanged: (value) {},
                                      ),
                                      Text(
                                        "Female",
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .textstylerobotoromanregular13
                                            .copyWith(
                                          fontSize: 13,
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
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21,
                            top: 19,
                            right: 16,
                          ),
                          child: Container(
                            height: 44,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 40,
                            child: TextFormField(
                              controller: ageEnterageController,
                              decoration: InputDecoration(
                                hintText: "Age(Enter age(18-99))",
                                hintStyle: AppStyle.textstylerobotoromanbold16
                                    .copyWith(
                                  fontSize: 16,
                                  color: ColorConstant.gray500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 7,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgAge,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 28,
                                  minHeight: 48,
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21,
                            top: 20,
                            right: 16,
                          ),
                          child: Container(
                            height: 44,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 40,
                            child: TextFormField(
                              controller: enterDailyRatController,
                              decoration: InputDecoration(
                                hintText: "Enter Daily Rate",
                                hintStyle: AppStyle.textstylerobotoromanbold16
                                    .copyWith(
                                  fontSize: 16,
                                  color: ColorConstant.gray500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 7,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgRate,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 28,
                                  minHeight: 48,
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21,
                            top: 20,
                            right: 16,
                          ),
                          child: Container(
                            height: 44,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 40,
                            child: TextFormField(
                              controller: selectExpatriaController,
                              decoration: InputDecoration(
                                hintText: "Select Expatriates Skill Options",
                                hintStyle: AppStyle.textstylerobotoromanbold16
                                    .copyWith(
                                  fontSize: 16,
                                  color: ColorConstant.gray500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 7,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgBag,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 28,
                                  minHeight: 48,
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 26,
                                  ),
                                  child: Container(
                                    height: 8,
                                    width: 15,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgArrowDown,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 8,
                                  minHeight: 8,
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: 35,
                            right: 32,
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
                                  left: 15,
                                  top: 12,
                                  right: 15,
                                ),
                                child: Text(
                                  "Skill (Choose one or more)",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.textstylerobotoromanbold14
                                      .copyWith(
                                    fontSize: 14,
                                    height: 1.14,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 14,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_aluminium_glass",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_carpenter_furni",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 12,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_electrician",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_excavation_and",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 12,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_fabricator",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "msg_facility_manage",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 12,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_fire_fighting",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                  bottom: 15,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_flooring",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
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
                            left: 21,
                            top: 15,
                            right: 16,
                          ),
                          child: Container(
                            height: 44,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 40,
                            child: TextFormField(
                              controller: selectWorkLocController,
                              decoration: InputDecoration(
                                hintText: "Select Work Location",
                                hintStyle: AppStyle.textstylerobotoromanbold16
                                    .copyWith(
                                  fontSize: 16,
                                  color: ColorConstant.gray500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                    width: 1,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 7,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgLocation,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 28,
                                  minHeight: 48,
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 26,
                                  ),
                                  child: Container(
                                    height: 8,
                                    width: 16,
                                    child: SvgPicture.asset(
                                      ImageConstant.imgArrowDown,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 8,
                                  minHeight: 8,
                                ),
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: 35,
                            right: 32,
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
                                  left: 15,
                                  top: 12,
                                  right: 15,
                                ),
                                child: Text(
                                  "Choose your location",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.textstylerobotoromanbold14
                                      .copyWith(
                                    fontSize: 14,
                                    height: 1.14,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 14,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_kolkata",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_delhi",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 12,
                                  right: 16,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_mumbai",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                  bottom: 18,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 100,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: ColorConstant.redA400,
                                          width: 1,
                                        ),
                                      ),
                                      materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Text(
                                      "lbl_bangalore",
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .textstylerobotoromanregular14
                                          .copyWith(
                                        fontSize: 14,
                                        height: 1.14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                            onTap: () {

                            },
                            child:
                            Padding(
                              padding: EdgeInsets.only(
                                left: 21,
                                top: 51,
                                right: 14,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 50,
                                decoration:
                                AppDecoration.textstylerobotoromanbold13,
                                child: Text(
                                  "CONTINUE",
                                  textAlign: TextAlign.left,
                                  style:
                                  AppStyle.textstylerobotoromanbold13.copyWith(
                                    fontSize: 13,
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
