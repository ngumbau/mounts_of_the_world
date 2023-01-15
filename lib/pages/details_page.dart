import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/models/mount.dart';

import '../widgets/details_bottom_actions.dart';
import '../widgets/details_rating_bar.dart';

class DetailsPage extends StatelessWidget {
  final Mount mountain;

  const DetailsPage({required this.mountain, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(mountain.path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mountain.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            mountain.location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      child: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        iconTheme: const IconThemeData(color: Colors.white),
                        title: const Icon(
                          Icons.terrain,
                          color: Colors.white,
                          size: 40,
                        ),
                        centerTitle: true,
                        actions: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Icon(
                              Icons.pending,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  DetailsRatingBar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          child: Text(
                            'About ${mountain.name}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          child: Text(
                            'About ${mountain.description}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const DetailsBottomActions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
