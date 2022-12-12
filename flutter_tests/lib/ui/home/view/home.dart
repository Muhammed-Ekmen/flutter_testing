import 'package:flutter/material.dart';
import 'package:flutter_tests/ui/home/viewModel/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Testing")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('${Counter.instance.counterNumber}', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
      floatingActionButton: _fab(),
    );
  }

  FloatingActionButton _fab() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          Counter.instance.increase();
        });
      },
      child: const Icon(Icons.add),
    );
  }
}
