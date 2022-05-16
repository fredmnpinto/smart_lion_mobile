import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/deposit.dart';
import 'package:smart_lion_mobile/app/data/repository/bottle.dart';
import 'package:smart_lion_mobile/app/data/repository/deposit.dart';
import 'package:smart_lion_mobile/app/data/repository/oil_bin.dart';


import 'package:firebase_auth/firebase_auth.dart';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

import '../../data/models/oil_bin.dart';

class DepositController extends GetxController {
  final OilBinRepository oilBinRepository;
  final BottleRepository bottleRepository;
  final DepositRepository depositRepository;

  DepositController({required this.oilBinRepository, required this.bottleRepository, required this.depositRepository});

  final searchBarController = TextEditingController();

  final _oilBins = <OilBinModel>[].obs;

  get oilBins => this._oilBins.value;
  set oilBins(value) => this._oilBins.value = value;

  late BottleModel _bottleScanned;
  late OilBinModel _oilBinSelected;

  BottleModel get bottleScanned => this._bottleScanned;
  OilBinModel get oilBinSelected => this._oilBinSelected;

  searchOilBins(text) async {
    List<OilBinModel> allOilBins = await oilBinRepository.getAll();

    List<OilBinModel> oilBinList = <OilBinModel>[];

    for(OilBinModel oilBin in allOilBins) {
      if(oilBin.address.contains(text)) {
        oilBinList.add(oilBin);
      }
    }

    oilBins = oilBinList;
  }

  selectOilBin(int id) async {
    OilBinModel oilBin = await oilBinRepository.getFromId(id);

    _oilBinSelected = oilBin;

    Get.toNamed(Routes.CONFIRMDEPOSIT);
  }

  deposit() {
    DepositModel deposit = DepositModel(bottleId: 1, oilBinId: _oilBinSelected.id!);
    
    bottleRepository.add(_bottleScanned);
    depositRepository.add(deposit);
  }

  Future<void> scan() async {
    ScanResult codeSanner = await BarcodeScanner.scan(
      options: ScanOptions(
      useCamera: -1, // -1 para utilizar a camera de tras, e 1 para usar a camera da frente.
      ),
    );

    BottleModel bottle = BottleModel(
      firebaseUid: FirebaseAuth.instance.currentUser!.uid, 
      qrCode: codeSanner.rawContent, 
    );

    _bottleScanned = bottle;

    Get.toNamed(Routes.SEARCHLOCATIONS);
  }
}