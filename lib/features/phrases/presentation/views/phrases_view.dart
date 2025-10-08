import 'package:flutter/material.dart';
import 'package:toku_app/features/phrases/presentation/views/widgets/phrases_view_body.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        ),
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
      ),
      body: PhrasesViewBody(),
    );
  }
}
