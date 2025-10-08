import 'package:flutter/material.dart';
import 'package:toku_app/core/models/item_model.dart';
import 'package:toku_app/core/services/data_service.dart';
import 'package:toku_app/core/widgets/item.dart';

class NumbersViewBody extends StatelessWidget {
  const NumbersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> numberData = DataService.numbersData;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: numberData.length,
      itemBuilder: (BuildContext context, int index) {
        return Item(
          item: numberData[index],
          backgroundColor: Colors.orange.shade300,
        );
      },
    );
  }
}
