import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/util/color.dart';

class MountsPage extends StatelessWidget {
  const MountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: const Drawer(),
      body: const Center(
        child: Text('Welcome to Mounts of the World!'),
      ),
    );
  }
}
