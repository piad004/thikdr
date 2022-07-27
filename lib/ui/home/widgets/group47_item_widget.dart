import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_style.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/math_utils.dart';
import '../model/group47_item_model.dart';

// ignore: must_be_immutable
class Group47ItemWidget extends StatelessWidget {

  Group47ItemModel group47ItemModelObj;

  Group47ItemWidget(this.group47ItemModelObj);

  //var controller = Get.find<HomeUiForContractorController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        135.00,
      ),
      width: getHorizontalSize(
        377.00,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              ImageConstant.imgBannerphoto1,
              height: getVerticalSize(
                135.00,
              ),
              width: getHorizontalSize(
                377.00,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  31.00,
                ),
                top: getVerticalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  31.00,
                ),
                bottom: getVerticalSize(
                  24.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_how_mobile_apps".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstylerobotoromanregular10.copyWith(
                        fontSize: getFontSize(
                          10,
                        ),
                        height: 1.60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        27.00,
                      ),
                      right: getHorizontalSize(
                        27.00,
                      ),
                    ),
                    child: Text(
                      "msg_lead_generation".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstylerobotoromanbold12.copyWith(
                        fontSize: getFontSize(
                          12,
                        ),
                        height: 1.33,
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
