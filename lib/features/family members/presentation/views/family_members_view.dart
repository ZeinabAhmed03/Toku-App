import 'package:flutter/material.dart';
import 'package:toku_app/features/family%20members/presentation/widgets/family_members_view_body.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
        ),
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
      ),
      body: FamilyMembersViewBody(),
    );
  }
}
