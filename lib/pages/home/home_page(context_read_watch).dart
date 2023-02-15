import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final read = context.read<HomeProvider>();//funksiyaga murojaat
    //final watch = context.watch<HomeProvider>();//stateni get qilinadi
    return Scaffold(
      appBar: AppBar(title: Builder(builder: (context) {
        print("APPBAR");
        return const Text("HomePage");
      })),
      body: Center(
        child: Builder(builder: (context) {
          print("TEXT");
          return Text(
            "${context.watch<HomeProvider>().count}",
            style: const TextStyle(fontSize: 32),
          );
        }),
      ),
      floatingActionButton: Builder(builder: (context) {
        print("floatingActionButton");
        return FloatingActionButton(
          onPressed: () {
            context.read<HomeProvider>().increment(context);
            //read.increment();
          },
        );
      }),
    );
  }
}
