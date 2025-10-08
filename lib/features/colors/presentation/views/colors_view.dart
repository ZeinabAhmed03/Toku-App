import 'package:flutter/material.dart';
import 'package:toku_app/features/colors/presentation/widgets/colors_view_body.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        ),
        automaticallyImplyLeading: false,
        title: Text('Colors', style: TextStyle(color: Colors.white)),
      ),
      body: ColorsViewBody(),
    );
  }
}
