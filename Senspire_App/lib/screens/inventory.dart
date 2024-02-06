import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/screens/product_details/product_details_screen.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';
import 'package:grocery_app/widgets/search_bar_widget.dart';

import 'filter_screen.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Inventory",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              padded(SearchBarWidget2()),
              StaggeredGrid.count(
                crossAxisCount: 2,
                // I only need two card horizontally
                children: demoItems.asMap().entries.map<Widget>((e) {
                  GroceryItem groceryItem = e.value;
                  return GestureDetector(
                    onTap: () {
                      onItemClicked(context, groceryItem);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: GroceryItemCardWidget(
                        item: groceryItem,
                        heroSuffix: "explore_screen",
                      ),
                    ),
                  );
                }).toList(),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 0.0, // add some space
              )
            ],
          ),
        ),
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "explore_screen",
        ),
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }
}
