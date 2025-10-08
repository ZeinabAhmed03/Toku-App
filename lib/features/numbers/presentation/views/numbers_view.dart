import 'package:flutter/material.dart';
import 'package:toku_app/features/numbers/presentation/widgets/numbers_view_body.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});

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
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        ),
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: NumbersViewBody(),
    );
  }
}
