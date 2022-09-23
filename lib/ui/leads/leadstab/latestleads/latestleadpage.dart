
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:thikdr/ui/leads/leadstab/latestleads/widgets/leads_item_widget.dart';

import '../../../../network/webservice.dart';
import '../../../../utils/math_utils.dart';
import '../../../../utils/pref_utils.dart';
import '../../../login/mvvm_login/check_user_model.dart';
import '../../leaddetails/model/lead_model.dart';
import 'controller/leads_controller.dart';
import 'models/leads_item_model.dart';
import 'models/leads_model.dart';

class LatestLeadsPage extends StatefulWidget {
  @override
  State<LatestLeadsPage> createState() => _LatestLeadsState();
}

class _LatestLeadsState extends State<LatestLeadsPage>  with TickerProviderStateMixin  {

  List<LeadList> _list = [
  ];

  @override
  void initState() {
    super.initState();

    getData();
  }

  void getData() async{
    if (!await InternetConnectionChecker().hasConnection) {
      showMsg("Check internet connection!");
    }else {
      getLatestLeads();
    }
  }

  Future<void> getLatestLeads() async {
    try {
      var token= await PrefUtils().getPreferencesData("token");

      LeadModel leadModel = await Webservice().requestLeadsList(token.toString());

      if (!leadModel.error!) {
        setState(() {
          _list = leadModel.data!.list!;
        });
      }

      print('response : ${jsonEncode(leadModel)}');
    } catch (e) {
      showMsg(e.toString());
    }
  }

  void showMsg(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          1.00,
        ),
        right: getHorizontalSize(
          1.00,
        ),
      ),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            LeadList model =
            _list[index];
            return LeadsItemWidget(
              model,
            );
          },
        ),
    ),
    );
  }
}