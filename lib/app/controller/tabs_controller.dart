/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter V8
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2025-present initappz.
*/
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:user/app/backend/parse/tabs_parse.dart';
import 'package:user/app/controller/product_cart_controller.dart';

class TabsController extends GetxController with GetTickerProviderStateMixin implements GetxService {
  final TabsParser parser;
  int cartTotal = 0;
  int tabId = 0;
  late TabController tabController;
  TabsController({required this.parser});

  @override
  void onInit() {
    super.onInit();
    debugPrint('++++++++++++');
    if (Get.arguments != null && Get.arguments[0] != null) {
      debugPrint('Tab Index- ------- > from Arg --> ${Get.arguments[0]}');
      tabId = int.parse(Get.arguments[0].toString());
    }
    tabController = TabController(length: 5, vsync: this, initialIndex: tabId);
  }

  void updateCartValue() {
    cartTotal = Get.find<ProductCartController>().savedInCart.length;
    update();
  }

  void cleanLoginCreds() {
    // parser.cleanData();
  }

  void updateTabId(int id) {
    tabId = id;
    tabController.animateTo(tabId);
    update();
  }
}
