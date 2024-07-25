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


    if (items == null) {
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

    } else {
      return GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 4,
        ),
        itemCount: items?.length ?? itemCount,
        itemBuilder: (_, index) => 
          Image.network(items![index].imageUrl, fit: BoxFit.cover)
          
      );
    }

    

  }
}