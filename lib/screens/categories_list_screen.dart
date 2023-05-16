import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dummy_data.dart';
import 'package:flutter_application_1/models/category_item_model.dart';
import 'package:flutter_application_1/widgets/category_item_widget.dart';

class CategoryListScreen extends StatefulWidget {
  final List<CategoryItemModel> items = DUMMY_Category;

  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  List<CategoryItemModel>? displayedItems;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    displayedItems = widget.items.toList();

    super.didChangeDependencies();
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 150,
      width: double.infinity,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Salad and Soups'),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return CategoryItemWidget(
              id: displayedItems![index].id,
              title: displayedItems![index].title,
              imageUrl: displayedItems![index].imageUrl,
              description: displayedItems![index].description,
              price: displayedItems![index].price,
            );
          }),
          itemCount: displayedItems!.length,
        ));
  }
}
