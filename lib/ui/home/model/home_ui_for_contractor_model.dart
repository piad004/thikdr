import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'group47_item_model.dart';
import 'home_ui_for_contractor_item_model.dart';

class HomeUiForContractorModel {
  RxList<Group47ItemModel> group47ItemList =
  RxList.filled(1, Group47ItemModel(""));

  RxList<HomeUiForContractorItemModel> homeUiForContractorItemList =
  RxList.filled(9, HomeUiForContractorItemModel("",""));
}