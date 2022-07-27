import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../theme/app_decoration.dart';
import '../../../../../theme/app_style.dart';
import '../../../../../utils/color_constant.dart';
import '../../../../../utils/image_constant.dart';
import '../../../../../utils/math_utils.dart';
import '../models/add_party_item_model.dart';

class AddPartyItemWidget extends StatelessWidget {
  AddPartyItemWidget(this._itemModel);

  AddPartyItemModel _itemModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child:
      Container(
        //width: size.width/2-25,
        margin: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),
          top: getVerticalSize(10),bottom: getVerticalSize(10),),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
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
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  17.00,
                ),
                top: getVerticalSize(
                  8.00,
                ),
                bottom: getVerticalSize(
                  8.00,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(
                      45.00,
                    ),
                    width: getSize(
                      45.00,
                    ),
                    child: Image.asset(
                      ImageConstant.imgUser1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            11.00,
                          ),
                          top: getVerticalSize(
                            4.00,
                          ),
                          bottom: getVerticalSize(
                            2.00,
                          ),
                        ),
                        child: Text(
                          "Party name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .textstylerobotoromanbold16
                              .copyWith(
                            fontSize: getFontSize(
                              16,
                            ),
                            height: 1.00,
                            color: ColorConstant.black900,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            11.00,
                          ),
                          top: getVerticalSize(
                            2.00,
                          ),
                          bottom: getVerticalSize(
                            2.00,
                          ),
                        ),
                        child: Text(
                          "897543456789",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .textstylerobotoromanbold16
                              .copyWith(
                            fontSize: getFontSize(
                              13,
                            ),
                            fontWeight: FontWeight.normal,
                            color: ColorConstant.black900,
                            height: 1.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
