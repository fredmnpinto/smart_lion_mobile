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

  get oilBins => _oilBins.value;
  set oilBins(value) => _oilBins.value = value;

  late BottleModel _bottleScanned;
  late OilBinModel _oilBinSelected;

  BottleModel get bottleScanned => _bottleScanned;
  OilBinModel get oilBinSelected => _oilBinSelected;

  
  /// Pesquisa por todos os oleões
  /// 
  /// author: Gabriel Fernandes 19/05/2022
  void searchOilBins(text) async {
    List<OilBinModel> allOilBins = await oilBinRepository.getAll();

    List<OilBinModel> oilBinList = <OilBinModel>[];

    for(OilBinModel oilBin in allOilBins) {
      if(oilBin.address.contains(text)) {
        oilBinList.add(oilBin);
      }
    }

    oilBins = oilBinList;
  }

  /// Seleciona um oleão especifico e vai para a pagina de confirmação de deposito
  /// 
  /// author: Gabriel Fernandes 19/05/2022
  void selectOilBin(int id) async {
    OilBinModel oilBin = await oilBinRepository.getFromId(id);

    _oilBinSelected = oilBin;

    Get.toNamed(Routes.CONFIRMDEPOSIT);
  }

  /// Cria um deposito na base de dados
  /// para o deposito escolhido e com a garrafa registada pelo
  /// scanner
  /// 
  /// author: Gabriel Fernandes 19/05/2022
  void deposit() {
    // Primeiro insere a garrafa e retorna o seu id
    insertBottle().then((bottleId) => {
      //Depois e inserido o novo deposito
      depositRepository.add(DepositModel(bottleId: bottleId, oilBinId: _oilBinSelected.id ?? -1))
    });

    Get.offAndToNamed(Routes.USERPROFILE);
  }

  /// Insere a bottle scaneada na base de dados
  /// e retorna o seu id
  /// 
  /// Se retornar -1 é porque ou não encontrou ou o id e null
  /// 
  /// author: Gabriel Fernandes 19/05/2022
  Future<int> insertBottle() async {
    bottleRepository.add(_bottleScanned);

    List<BottleModel> bottleList = await bottleRepository.getAll();

    for(BottleModel bottle in bottleList) {
      if(bottle.qrCode == _bottleScanned.qrCode) {
        return bottle.id ?? -1;
      }
    }

    return -1;
  }

  /// Scaneia um codigo QR
  /// e regist na base de dados a garrafa
  /// 
  /// author: Gabriel Fernandes 19/05/2022
  Future<void> scan() async {
    ScanResult codeSanner = await BarcodeScanner.scan(
      options: const ScanOptions(
        useCamera: -1, // -1 para utilizar a camera de tras, e 1 para usar a camera da frente.
      ),
    );

    if(codeSanner.rawContent != "") { // Se não leu nada, não faz nada
      BottleModel bottle = BottleModel(
        firebaseUid: FirebaseAuth.instance.currentUser!.uid, 
        qrCode: codeSanner.rawContent, 
      );

      _bottleScanned = bottle;

      Get.toNamed(Routes.SEARCHLOCATIONS);
    }
  }
}