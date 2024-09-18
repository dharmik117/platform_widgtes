import 'package:cross_platform_widgets/cross_platform_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlatformButton(onPressed: (){}, child: Text('Hello')),
          PlatformCheckbox(value: true, onChanged: (val){}),
          PlatformSwitch(value: true, onChanged: (val){})
        ],
      ),
    );
  }
}
