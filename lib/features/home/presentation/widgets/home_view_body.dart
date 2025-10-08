import 'package:flutter/material.dart';
import 'package:toku_app/features/colors/presentation/views/colors_View.dart';
import 'package:toku_app/features/family%20members/presentation/views/family_members_view.dart';
import 'package:toku_app/features/home/data/models/item_model.dart';
import 'package:toku_app/features/home/presentation/widgets/custom_container.dart';
import 'package:toku_app/features/numbers/presentation/views/numbers_view.dart';
import 'package:toku_app/features/phrases/presentation/views/phrases_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = [
      ItemModel(
        name: 'Numbers',
        color: Colors.orange,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return NumbersView();
              },
            ),
          );
        },
      ),

      ItemModel(
        name: 'Family Members',
        color: Colors.green,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FamilyMembersView();
              },
            ),
          );
        },
      ),

      ItemModel(
        name: 'Colors',
        color: Colors.deepPurple.shade400,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ColorsView();
              },
            ),
          );
        },
      ),

      ItemModel(
        name: 'Phrases',
        color: Colors.lightBlue.shade200,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PhrasesView();
              },
            ),
          );
        },
      ),
    ];
    return Column(
      children: [
        SizedBox(
          height: 70 * 4,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CustomContainer(
                color: items[index].color,
                name: items[index].name,
                onTap: items[index].onTap,
              );
            },
          ),
        ),
      ],
    );
  }
}
