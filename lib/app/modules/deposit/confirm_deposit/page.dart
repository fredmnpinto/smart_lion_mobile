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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                top : BorderSide(color: Colors.black),
                left : BorderSide(color: Colors.black),
                right : BorderSide(color: Colors.black),
                bottom : BorderSide(color: Colors.black),
              )
            ),
            child: Text(controller.bottleScanned.qrCode),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                top : BorderSide(color: Colors.black),
                left : BorderSide(color: Colors.black),
                right : BorderSide(color: Colors.black),
                bottom : BorderSide(color: Colors.black),
              ),
            ),
            child: Padding(padding: EdgeInsets.fromLTRB(30, 30, 30, 30), child : Text(controller.oilBinSelected.coordinates.x.toString()+"  "+controller.oilBinSelected.coordinates.y.toString()),
          )),
          TextButton(
            child: Text("CONFIRM"),
            onPressed: controller.deposit(),
          )
        ],
      )
      )
    );
  }
}