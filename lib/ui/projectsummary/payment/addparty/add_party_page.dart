
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thikdr/ui/projectsummary/payment/addparty/models/add_party_item_model.dart';
import 'package:thikdr/ui/projectsummary/payment/addparty/widgets/add_party_item_widget.dart';

import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../utils/color_constant.dart';
import '../../../../utils/image_constant.dart';
import '../../../../utils/math_utils.dart';

class AddPartyPage extends StatefulWidget {
  @override
  State<AddPartyPage> createState() => _AddPartyState();
}

class _AddPartyState extends State<AddPartyPage> {

  TextEditingController amountReceivedController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  ScrollController _controller = new ScrollController();

  List<AddPartyItemModel> _list=[
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
    AddPartyItemModel(''),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        appBar:
        AppBar(
          elevation: 0,
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
            "ADD PARTY",
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
        backgroundColor: ColorConstant.gray51,
        body: Container(
          margin: EdgeInsets.only(top:getVerticalSize(20)),
          decoration: BoxDecoration(
            color: ColorConstant.gray51,
          ),
          child:ListView(
           /* mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,*/
            children: [
              Container(
                height: getVerticalSize(
                  50.00,
                ),
                margin: EdgeInsets.only(left: getVerticalSize(10),right: getVerticalSize(10)),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search here...",
                    hintStyle: AppStyle.textstylerobotoromanregular147.copyWith(
                      fontSize: getFontSize(
                        16.0,
                      ),
                      color: ColorConstant.gray700,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          45.00,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: ColorConstant.gray301,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          45.00,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: ColorConstant.gray301,
                        width: 1,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          10.00,
                        ),
                        right: getHorizontalSize(
                          10.00,
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
                          ImageConstant.imgSearch,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    suffixIconConstraints: BoxConstraints(
                      minWidth: getSize(
                        16.00,
                      ),
                      minHeight: getSize(
                        46.00,
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
                    color: ColorConstant.gray700,
                    fontSize: getFontSize(
                      14.0,
                    ),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
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
                              38.00,
                            ),
                            width: getSize(
                              38.00,
                            ),
                            child: Image.asset(
                              ImageConstant.imgUser1,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                11.00,
                              ),
                              top: getVerticalSize(
                                8.00,
                              ),
                              bottom: getVerticalSize(
                                8.00,
                              ),
                            ),
                            child: Text(
                              "Add new party",
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          24.00,
                        ),
                        right: getHorizontalSize(
                          22.00,
                        ),
                        bottom: getVerticalSize(
                          24.00,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          15.00,
                        ),
                        width: getHorizontalSize(
                          15.00,
                        ),
                        child: Image.asset(
                          ImageConstant.imgArrowRightBlack,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: getHorizontalSize(15),right: getHorizontalSize(250),
                    top: getVerticalSize(10)),
                padding: EdgeInsets.only(left: getHorizontalSize(10),right: getHorizontalSize(10),
                    top: getVerticalSize(7),bottom: getVerticalSize(7)),
                decoration:
                AppDecoration.textstylerobotoromanbold147.copyWith(
                  color: ColorConstant.blue500,
                ),
                child: Text(
                  "Company Parties",
                  textAlign: TextAlign.left,
                  style: AppStyle.textstylerobotoromanbold147
                      .copyWith(
                      fontSize: getFontSize(
                        16,
                      ),
                      height: 1.14,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                    top: getVerticalSize(
                      5.00,
                    ),
                    right: getHorizontalSize(
                      16.00,
                    ),
                  ),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _controller,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _list.length,
                    itemBuilder: (context, index) {
                      AddPartyItemModel model = _list[index];
                      return AddPartyItemWidget(
                        model,
                      );
                    },
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

