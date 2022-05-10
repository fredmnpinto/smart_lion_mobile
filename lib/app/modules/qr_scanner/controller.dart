import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/data/models/user.dart';
import 'package:smart_lion_mobile/app/data/repository/bottle.dart';
import 'package:smart_lion_mobile/app/data/repository/user.dart';
import 'package:smart_lion_mobile/app/modules/qr_scanner/page.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

class QRScannerController extends GetxController {
  final BottleRepository repository;

  QRScannerController({required this.repository});

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

    repository.add(bottle);
  }


}