import 'package:get/get.dart';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:smart_lion_mobile/app/modules/qr_scanner/page.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

class QRScannerController extends GetxController {
  Future<void> scan() async {
    ScanResult codeSanner = await BarcodeScanner.scan(
      options: ScanOptions(
      useCamera: -1, // -1 para utilizar a camera de tras, e 1 para usar a camera da frente.
      ),
    );
  }
}