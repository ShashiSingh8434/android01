import 'package:android01/feature/counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Counter Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Counter: $count"),
            const SizedBox(height: 10),
            const Divider(height: 10),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state++;
              },
              child: Text(" + "),
            ),

            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state--;
              },
              child: Text(" - "),
            ),

            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state = 0;
              },
              child: Text("Reset"),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
