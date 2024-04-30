import 'package:flutter/material.dart';
import 'package:provider12/provider.dart';
import 'package:provider_test/provider.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(context.watch<CustomProvider>().value.toString()),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CustomProvider>().removeInt();
                    },
                    child: const Text("Remove One")),
                ElevatedButton(
                    onPressed: () {
                      context.read<CustomProvider>().addInt();
                    },
                    child: const Text("Add One")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
