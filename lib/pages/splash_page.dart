import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/pages/mounts_page.dart';
import 'package:mounts_of_the_world/util/color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const MountsPage())));
    });
    return Container(
      color: MainColor.color,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 80),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
