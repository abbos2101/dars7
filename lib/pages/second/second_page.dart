import 'package:dars7/pages/second/second_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  static const String route = "/second";
  //add payment commit
  //

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    if (args != null) {
      //fdfgfd
      context.read<SecondProvider>().setCount(args["count"] as int);
    }
    return Scaffold(
      appBar: AppBar(title: const Text("SecondPage")),
      body: Consumer<SecondProvider>(
        builder: (context, provider, child) {
          return Center(
            child: Text(
              "${provider.count}",
              style: const TextStyle(fontSize: 32),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<SecondProvider>().increment(context);
        },
      ),
    );
  }
}
