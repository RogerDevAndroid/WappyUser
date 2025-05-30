/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter V8
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2025-present initappz.
*/
import 'package:get/get.dart';
import 'package:user/app/backend/api/api.dart';
import 'package:user/app/helper/shared_pref.dart';
import 'package:user/app/util/constant.dart';

class WebPaymentParse {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  WebPaymentParse({required this.sharedPreferencesManager, required this.apiService});

  Future<Response> createAppoinments(var param) async {
    return await apiService.postPrivate(AppConstants.createAppointments, param, sharedPreferencesManager.getString('token') ?? '');
  }

  Future<Response> sendNotification(var body) async {
    var response = await apiService.postPrivate(AppConstants.sendNotification, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  String getUID() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }

  Future<Response> verifyPurchase(var payKey) async {
    return await apiService.getPrivate(AppConstants.verifyRazorPayments + payKey, sharedPreferencesManager.getString('token') ?? '');
  }

  String getName() {
    String firstName = sharedPreferencesManager.getString('first_name') ?? '';
    String lastName = sharedPreferencesManager.getString('last_name') ?? '';
    return '$firstName $lastName';
  }

  String getEmail() {
    return sharedPreferencesManager.getString('email') ?? '';
  }

  String getSupportEmail() {
    return sharedPreferencesManager.getString('supportEmail') ?? '';
  }

  String getSupportPhone() {
    return sharedPreferencesManager.getString('supportPhone') ?? '';
  }
}
