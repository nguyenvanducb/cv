import 'package:flutter/widgets.dart';

import 'feature/home/home_feature.dart';


typedef PageContentBuilder = Widget Function(Object? arguments);

// We use name route
// All our routes will be available here
final Map<String, PageContentBuilder> routes = {
  Home.routeName: (Object? arguments) =>  const Home(),
  Sell.routeName: (Object? arguments) =>  Sell(),
};
