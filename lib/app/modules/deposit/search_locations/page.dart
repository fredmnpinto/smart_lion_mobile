
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';
import 'widgets/search_bar_input.dart';

class SearchLocationsPage extends GetView<DepositController> {
  const SearchLocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Select Deposit Location'),
          ),
          body: Column(
            children: [
              SearchBarInputField(controller: controller),
              Expanded( 
                child: GetX<DepositController>(
                initState: (state) { 
                  Get.find<DepositController>().searchOilBins("");
                },
                builder: (_) { 
                  return controller.oilBins.length < 1 ?
                  Center(child: CircularProgressIndicator(),)
                  :
                  ListView.builder(
                    itemCount: controller.oilBins.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(controller.oilBins[index].address),
                        subtitle: Text(controller.oilBins[index].coordinates.x.toString()+" "+controller.oilBins[index].coordinates.y.toString()),
                        onTap: () { controller.selectOilBin(controller.oilBins[index].id); },
                      );
                    }
                  );
                }
              ),
              ),
            ],
          )
      );
  }
}