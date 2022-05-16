
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';


import '../../data/repository/oil_bin.dart';

class SearchLocationsController extends GetxController {
  final searchBarController = TextEditingController();

  final _oilBins = <OilBinModel>[].obs;

  get oilBins => this._oilBins.value;
  set oilBins(value) => this._oilBins.value = value;

  final OilBinRepository repository;

  SearchLocationsController({required this.repository});

  searchOilBins(text) async {
    List<OilBinModel> allOilBins = await repository.getAll();

    List<OilBinModel> oilBinList = <OilBinModel>[];

    for(OilBinModel oilBin in allOilBins) {
      if(oilBin.address.contains(text)) {
        oilBinList.add(oilBin);
      }
    }

    oilBins = oilBinList;
  }

  selectOilBin(int id) {
    print(id);
  }

}