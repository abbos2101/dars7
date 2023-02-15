import 'package:dars7/pages/second/second_page.dart';
import 'package:dars7/pages/second/second_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class HomePage extends StatelessWidget {
  static const String route = "/";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final read = context.read<HomeProvider>();
    //final watch = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(title: Builder(builder: (context) {
        print("APPBAR");
        return const Text("HomePage");
      })),
      body: Center(
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            print("Text");
            return Text(
              "${provider.count}",
              style: const TextStyle(fontSize: 32),
            );
          },
        ),
      ),
      floatingActionButton: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          print("FloatingActionButton");
          return FloatingActionButton(
            onPressed: () {
              // if(provider.count%10==0){
              //   Navigator.pushNamed(context, SecondPage.route);
              // }
              provider.increment(context);

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return ChangeNotifierProvider(
              //         create: (context) => SecondProvider(),
              //         builder: (context, child) {
              //           return const SecondPage();
              //         },
              //       );
              //     },
              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
