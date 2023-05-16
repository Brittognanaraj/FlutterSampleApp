import 'package:flutter/material.dart';

class CategoryDetailWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String price;
  const CategoryDetailWidget({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  imageUrl,
                  height: 200,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title),
                Text(description),
                Text('\$$price'),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
