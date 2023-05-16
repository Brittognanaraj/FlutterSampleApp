import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_item_model.dart';
import 'package:flutter_application_1/screens/categories_details_screen.dart';

class CategoryItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String price;
  const CategoryItemWidget({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.price,
    super.key,
  });

  void selectItem(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CategoryDetailsScreen(
                productId: id,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => selectItem(context)),
      child: Column(
        children: [
          Row(
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
                      height: 90,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(description),
                    Text('\$$price'),
                  ],
                ),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
