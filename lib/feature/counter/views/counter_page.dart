import 'package:android01/feature/counter/viewModel/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterViewModelProvider);

    final viewModel = ref.read(counterViewModelProvider.notifier);

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
            TextButton(onPressed: viewModel.increment, child: Text(" + ")),

            const SizedBox(height: 10),
            TextButton(onPressed: viewModel.decrement, child: Text(" - ")),

            const SizedBox(height: 10),
            TextButton(onPressed: viewModel.reset, child: Text("Reset")),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
