import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'controller.dart';

class QRScannerPage extends GetView<QRScannerController> {
  const QRScannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
            body: Center (
                child: IconButton(
                    icon: Icon(Icons.qr_code_scanner),
                    onPressed: () {
                      controller.scan();
                    },
                    iconSize: 300,
                  ),
              ),
            );
  }

}