import 'package:get/get.dart';
import '../../data/providers/oil_bin.dart';
import '../../data/repository/oil_bin.dart';
import 'controller.dart';
import 'package:http/http.dart' as http;

class SearchLocationsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchLocationsController>(() {
      return SearchLocationsController(
        repository: 
          OilBinRepository(api: OilBinProvider(httpClient: http.Client())
        )
      );
    });
  }
}