import 'package:flutter/material.dart';
import 'package:toku_app/core/models/item_model.dart';
import 'package:toku_app/core/services/data_service.dart';
import 'package:toku_app/core/widgets/item.dart';

class ColorsViewBody extends StatelessWidget {
  const ColorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> colorsData = DataService.colorsData;
    return ListView.builder(
      itemCount: colorsData.length,
      itemBuilder: (context, index) {
        return Item(
          item: colorsData[index],
          backgroundColor: Colors.lightGreen,
          height: 90,
        );
      },
    );
  }
}
