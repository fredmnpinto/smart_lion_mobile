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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30), //Para simular um margin top
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                  ),
                  alignment: Alignment.topLeft,
                  iconSize: 60,
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  tooltip: "Go back",
                  onPressed: () => Get.toNamed(Routes.HOME),
                ),
                Center (
                  child: IconButton(
                    icon: Icon(Icons.qr_code_scanner),
                    onPressed: () {
                      controller.scan();
                    },
                    iconSize: 300,
                  ),
                ),
              ]
            )
          );
  }

}