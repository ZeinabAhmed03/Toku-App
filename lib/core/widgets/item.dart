import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/core/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.backgroundColor,
    this.height = 80,
    required this.item,
  });
  final ItemModel item;
  final Color backgroundColor;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (item.image != null)
          Container(
            width: 125,
            color: Colors.orange.shade50,
            child: Image.asset(item.image!, height: height, width: 72),
          ),

        Expanded(
          child: Container(
            height: height,
            color: backgroundColor,
            child: ListTile(
              title: Text(
                item.jName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: item.image == null ? 14 : null,
                ),
              ),
              subtitle: Text(
                item.eName,
                style: TextStyle(
                  color: item.image == null ? Colors.grey : Colors.white,
                  fontSize: item.image == null ? 12 : null,
                ),
              ),
              trailing: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(item.soundPath));
                },
                icon: Icon(Icons.play_arrow, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
