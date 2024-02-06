import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account/account_screen.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/explore_screen.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/screens/inventory.dart';

import '../favourite_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Shop", "assets/icons/shop.png", 0, HomeScreen()),
  NavigatorItem("Cart", "assets/icons/cart.png", 1, CartScreen()),
  NavigatorItem("Scan", "assets/icons/scan.png", 2, ExploreScreen()),
  NavigatorItem(
      "Inventory", "assets/icons/ic_inventory.png", 3, InventoryScreen()),
  NavigatorItem("Account", "assets/icons/user.png", 4, AccountScreen()),
];
