import 'dart:io';

import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';
import 'package:smart_lion_mobile/app/data/providers/deposit.dart';
import 'package:smart_lion_mobile/app/data/providers/oil_bin.dart';
import 'package:smart_lion_mobile/app/data/repository/bottle.dart';
import 'package:smart_lion_mobile/app/data/repository/deposit.dart';
import 'package:smart_lion_mobile/app/data/repository/oil_bin.dart';

import 'controller.dart';
import 'package:http/http.dart' as http;

class DepositBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepositController>(() {
      return DepositController(
        oilBinRepository: OilBinRepository(api: OilBinProvider(httpClient: http.Client())),
        bottleRepository: BottleRepository(apiBottle: BottleProvider(httpClient: http.Client())),
        depositRepository: DepositRepository(api: DepositProvider(httpClient: http.Client())),
      );
    });
  }
}