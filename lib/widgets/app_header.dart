import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/util/color.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/286885?s=400&u='
              '93c97c9cd13114a7d315f73595c981d3156faffc&v=4',
              height: 50,
              width: 50,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, Kristopher',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Good morning',
                style: TextStyle(color: MainColor.color, fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
