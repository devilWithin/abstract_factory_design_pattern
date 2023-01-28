import 'package:flutter/material.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample({Key? key}) : super(key: key);

  @override
  State<AbstractFactoryExample> createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('This is some text'),),
    );
  }
}
