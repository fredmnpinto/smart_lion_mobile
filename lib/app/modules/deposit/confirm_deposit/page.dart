import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../controller.dart';

class ConfirmDepositPage extends GetView<DepositController> {
  const ConfirmDepositPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                "Bottle",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              QrImage(
              data: controller.bottleScanned.qrCode,
              version: QrVersions.auto,
              size: 200.0,
            ),]
          ),
          Column(
            children: [
              const Text(
                "Oil Bin",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(controller.oilBinSelected.address),   
              Text(controller.oilBinSelected.coordinates.x.toString()+"  "+controller.oilBinSelected.coordinates.y.toString()),
            ]
          ),
          ElevatedButton(
            child: const Text("CONFIRM"),
            onPressed: () { controller.deposit(); },
          )
        ],
      )
      )
    );
  }
}