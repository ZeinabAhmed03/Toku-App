import 'package:flutter/material.dart';
import 'package:toku_app/core/models/item_model.dart';
import 'package:toku_app/core/services/data_service.dart';
import 'package:toku_app/core/widgets/item.dart';

class PhrasesViewBody extends StatelessWidget {
  const PhrasesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> phrases = DataService.phrasesSoundData;
    return ListView.builder(
      itemCount: phrases.length,
      itemBuilder: (context, index) {
        return Item(
          item: phrases[index],
          backgroundColor: Colors.lightBlue.shade200,
        );
      },
    );
  }
}
