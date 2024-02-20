import 'package:get/get.dart';
import 'package:shopping_flutter/presentation/home/home_screen.dart';

// Class containing static configuration for the app's pages.
class AppPages {
  // Static constant defining a list of GetPage objects for the app's pages.
  static final pages = [
    GetPage(name: HomeScreen.url, page: HomeScreen.new),
  ];
}
