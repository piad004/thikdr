
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thikdr/ui/leads/leadstab/latestleads/widgets/leads_item_widget.dart';

import '../../../../utils/math_utils.dart';
import 'controller/leads_controller.dart';
import 'models/leads_item_model.dart';
import 'models/leads_model.dart';

class LatestLeadsPage extends StatefulWidget {
  @override
  State<LatestLeadsPage> createState() => _LatestLeadsState();
}

class _LatestLeadsState extends State<LatestLeadsPage>  with TickerProviderStateMixin  {

  LeadsController controller = Get.put(LeadsController(LeadsModel().obs));

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
      child: Obx(
            () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.leadsModelObj.value.leadsItemList.length,
          itemBuilder: (context, index) {
            LeadsItemModel model =
            controller.leadsModelObj.value.leadsItemList[index];
            return LeadsItemWidget(
              model,
            );
          },
        ),
      ),
    ),
    );
  }
}