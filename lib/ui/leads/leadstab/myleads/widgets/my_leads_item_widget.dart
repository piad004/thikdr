import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../theme/app_decoration.dart';
import '../../../../../theme/app_style.dart';
import '../../../../../utils/color_constant.dart';
import '../../../../../utils/image_constant.dart';
import '../../../../../utils/math_utils.dart';
import '../../../leaddetails/model/lead_details_model.dart';
import '../../../leaddetails/model/lead_model.dart';
import '../../../leaddetails/my_leads_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class MyLeadsItemWidget extends StatelessWidget {
  MyLeadsItemWidget(this.myLeadsModel);

  LeadList myLeadsModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child:  InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MyLeadDetailsPage(myLeadsModel as Details))
          );
        },
        child:
        Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            10.00,
          ),
          bottom: getVerticalSize(
            10.00,
          ),
          right: 2
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  8.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        12.00,
                      ),
                      top: getVerticalSize(
                        4.00,
                      ),
                      bottom: getVerticalSize(
                        6.00,
                      ),
                    ),
                    child: Text(
                      myLeadsModel.category.toString(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerobotoromanregular8.copyWith(
                        fontSize: getFontSize(
                          14,
                        ),
                        height: 1.25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        22.00,
                      ),
                      decoration: AppDecoration.textstylerobotoromanregular1013,
                      child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(18),right: getHorizontalSize(18)),
                      child: 
                      Text(
                       myLeadsModel.lead_status.toString(),
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.textstylerobotoromanregular1013.copyWith(
                          fontSize: getFontSize(
                            14,
                          ),
                          height: 1.20,
                        ),
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  12.00,
                ),
                top: getVerticalSize(
                  9.00,
                ),
                right: getHorizontalSize(
                  12.00,
                ),
              ),
              child: Text(
                myLeadsModel.user.toString(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.textstylerobotobold12.copyWith(
                  fontSize: getFontSize(
                    14,
                  ),
                  height: 1.25,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  4.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: getVerticalSize(MediaQuery.of(context).size.width-130),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        11.00,
                      ),
                      bottom: getVerticalSize(
                        1.00,
                      ),
                    ),
                    child: Text(
                      myLeadsModel.address.toString(),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerobotoromanregular104.copyWith(
                        fontSize: getFontSize(
                          14,
                        ),
                        height: 1.70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        1.00,
                      ),
                      right: getHorizontalSize(
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
                              1.00,
                            ),
                          ),
                          child: Text(
                            "₹ "+myLeadsModel.estmd_price.toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.textstylerobotoromanbold121.copyWith(
                              fontSize: getFontSize(
                                14,
                              ),
                              height: 1.42,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              2.00,
                            ),
                          ),
                          child: Text(
                            "Estmd, Order Value".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanregular103
                                .copyWith(
                              fontSize: getFontSize(
                                12,
                              ),
                              height: 1.70,
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
                1.00,
              ),
              width: getHorizontalSize(
                MediaQuery.of(context).size.width,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  14.00,
                ),
                top: getVerticalSize(
                  17.00,
                ),
                right: getHorizontalSize(
                  5.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray302,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  17.00,
                ),
                bottom: getVerticalSize(
                  15.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        20.00,
                      ),
                      right: getHorizontalSize(
                        0.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.red200,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              15.00,
                            ),
                            top: getVerticalSize(
                              12.00,
                            ),
                            bottom: getVerticalSize(
                              2.00,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              18.00,
                            ),
                            width: getSize(
                              18.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgPhoneCall,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              15.00,
                            ),
                            top: getVerticalSize(
                              6.00,
                            ),
                            right: getHorizontalSize(
                              22.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "Call".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanregular1018
                                .copyWith(
                              fontSize: getFontSize(
                                14,
                              ),
                              height: 1.70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.green500,
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
                              10.00,
                            ),
                            top: getVerticalSize(
                              5.00,
                            ),
                            bottom: getVerticalSize(
                              5.00,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              14.00,
                            ),
                            width: getSize(
                              14.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgWhatsAppGreen,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              5.00,
                            ),
                            top: getVerticalSize(
                              5.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "Whatsapp".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanregular1019
                                .copyWith(
                              fontSize: getFontSize(
                                14,
                              ),
                              height: 1.70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: getHorizontalSize(
                        20.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.bluegray101,
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
                              9.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "Lead Status".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanregular1020
                                .copyWith(
                              fontSize: getFontSize(
                                14,
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
                              10.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              6.00,
                            ),
                            width: getHorizontalSize(
                              8.00,
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
          ],
        ),
      ),
    ),
    );
  }
}
