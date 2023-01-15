import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/data/mountains.dart';
import 'package:mounts_of_the_world/pages/details_page.dart';

import '../models/mount.dart';

class AppMountList extends StatelessWidget {
  const AppMountList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: ((context, index) {
          Mount mountain = mountItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(mountain: mountain)));
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(mountain.path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mountain.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    mountain.location,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
