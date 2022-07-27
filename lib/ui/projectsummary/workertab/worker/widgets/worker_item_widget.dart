import 'package:flutter/material.dart';

import '../../../../../theme/app_decoration.dart';
import '../../../../../theme/app_style.dart';
import '../../../../../utils/color_constant.dart';
import '../../../../../utils/image_constant.dart';
import '../../../../../utils/math_utils.dart';
import '../models/worker_item_model.dart';

// ignore: must_be_immutable
class WorkerItemWidget extends StatelessWidget {
  WorkerItemWidget(this._itemModel);

  WorkerItemModel _itemModel;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: getHorizontalSize(
              16.00,
            ),
            top: getVerticalSize(
              10,
            ),
            right: getHorizontalSize(
              16.00,
            ),
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorConstant.gray5005e,
                spreadRadius: getHorizontalSize(
                  2.00,
                ),
                blurRadius: getHorizontalSize(
                  2.00,
                ),
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
          child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child:Text(
                            "Sample User 2",
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanbold166.copyWith(
                              fontSize: getFontSize(
                                16,
                              ),
                              height: 1.20,
                              color: ColorConstant.black900
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(right: getHorizontalSize(10)),
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),bottom: getVerticalSize(3),top: getVerticalSize(3)),
                            decoration: BoxDecoration(
                              color: ColorConstant.orangeA100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "Carpenter Level 1",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular102.copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                                height: 1.20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child:
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),bottom: getVerticalSize(3),top: getVerticalSize(3)),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.deepPurple100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "IN 750 per day",
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerobotoromanregular102.copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.20,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: getHorizontalSize(10),bottom: getVerticalSize(8),top: getVerticalSize(3)),
                                  padding: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),bottom: getVerticalSize(3),top: getVerticalSize(3)),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blue100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Total work: IN 1500(2 day)",
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerobotoromanregular102.copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.20,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: getHorizontalSize(10),),
                            padding: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),bottom: getVerticalSize(3),top: getVerticalSize(3)),
                            decoration: BoxDecoration(
                              color: ColorConstant.red400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "Mark",
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular102.copyWith(
                                fontSize: getFontSize(
                                  16,
                                ),
                                height: 1.20,
                                color: ColorConstant.whiteA700,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ]),

        ),
      );
  }
}
