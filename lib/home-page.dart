import 'package:flutter/material.dart';
import 'package:provider12/provider.dart';
import 'package:provider_test/next-page.dart';
import 'package:provider_test/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
      ),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NextPage(),
                  ));
                },
                child: const Text("Navigate to Next Page")),
          ],
        ),
      ),
    );
  }
}
