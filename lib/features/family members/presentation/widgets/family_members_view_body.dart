import 'package:flutter/material.dart';
import 'package:toku_app/core/models/item_model.dart';
import 'package:toku_app/core/services/data_service.dart';
import 'package:toku_app/core/widgets/item.dart';

class FamilyMembersViewBody extends StatelessWidget {
  const FamilyMembersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> familyMembers = DataService.familyMembersData;
    return ListView.builder(
      itemCount: familyMembers.length,
      itemBuilder: (context, index) {
        return Item(
          item: familyMembers[index],
          backgroundColor: Colors.lightGreen,
        );
      },
    );
  }
}
