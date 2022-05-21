import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../controller.dart';

class QRScannerPage extends GetView<DepositController> {
  const QRScannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Scan QR Code"),
          centerTitle: true,
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {controller.scan();},
            iconSize: 300,
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0), 
            child: ElevatedButton(
              child: const Text("SCAN"),
              onPressed: () {controller.scan();},
            ),
          )
        ]
      )
    );
  }

}