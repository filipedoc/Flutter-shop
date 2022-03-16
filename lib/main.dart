import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/product_list.dart';

import './screens/product_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(51, 51, 51, .1),
  100: Color.fromRGBO(51, 51, 51, .2),
  200: Color.fromRGBO(51, 51, 51, .3),
  300: Color.fromRGBO(51, 51, 51, .4),
  400: Color.fromRGBO(51, 51, 51, .5),
  500: Color.fromRGBO(51, 51, 51, .6),
  600: Color.fromRGBO(51, 51, 51, .7),
  700: Color.fromRGBO(51, 51, 51, .8),
  800: Color.fromRGBO(51, 51, 51, .9),
  900: Color.fromRGBO(51, 51, 51, 1),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: MaterialColor(0xFF515151, color),
          accentColor: Color.fromARGB(255, 35, 192, 183),
          fontFamily: "Lato",
        ),
        home: ProductOverviewScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.PRODUCT_DETAIL: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}
