
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'widgets/search_bar_input.dart';

class SearchLocationsPage extends GetView<SearchLocationsController> {
  const SearchLocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Select the location of this deposit'),
          ),
          body: Column(
            children: [
              SearchBarInputField(controller: controller),
              Expanded( 
                child: GetX<SearchLocationsController>(
                initState: (state) { 
                  Get.find<SearchLocationsController>().searchOilBins("");
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
                        onTap: () { print(controller.oilBins[index].id); },
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