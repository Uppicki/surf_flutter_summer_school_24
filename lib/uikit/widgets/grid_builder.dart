import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';

class MyGridBuilder extends StatelessWidget {
  final int itemCount;
  final List<PhotoModel>? items;

  MyGridBuilder({
    super.key,
    required this.itemCount,
    this.items
    });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 4,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items?.length ?? itemCount,
      itemBuilder: (_, __) => 
        const ColoredBox(color: Colors.yellow)
        
    );

  }
}