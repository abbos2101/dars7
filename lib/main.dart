import 'package:dars7/pages/home/home_provider.dart';
import 'package:dars7/pages/second/second_page.dart';
import 'package:dars7/pages/second/second_provider.dart';
import 'package:flutter/material.dart';
import 'package:dars7/pages/home/home_page(consumer).dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) {
          // return const HomePage();
          return ChangeNotifierProvider(
            create: (context) => HomeProvider(),
            builder: (context, child) {
              return const HomePage();
            },
          );
        },
        SecondPage.route: (context) {
          return ChangeNotifierProvider(
            create: (context) => SecondProvider(),
            builder: (context, child) {
              return const SecondPage();
            },
          );
        }
      },
      // home: ChangeNotifierProvider(
      //   create: (context) => HomeProvider(),
      //   builder: (context, child) {
      //     return const HomePage();
      //   },
      // ),
    );
  }
}
