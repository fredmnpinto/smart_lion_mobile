import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../controller.dart';

class ConfirmDepositPage extends GetView<DepositController> {
  const ConfirmDepositPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(controller.oilBinSelected.coordinates.x.toString()+"  "+controller.oilBinSelected.coordinates.y.toString()),
          Text(controller.bottleScanned.qrCode),
          TextButton(
            child: Text("Confirm"),
            onPressed: controller.deposit(),
          )
        ],
      )
      )
    );
  }
}