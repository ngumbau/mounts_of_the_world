import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/util/color.dart';

import '../widgets/app_category_list.dart';
import '../widgets/app_header.dart';
import '../widgets/app_mount_list.dart';
import '../widgets/app_search.dart';

class MountsPage extends StatelessWidget {
  const MountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: MainColor.color,
        ),
        title: Icon(
          Icons.terrain,
          color: MainColor.color,
          size: 40,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: MainColor.color,
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountList(),
          ),
          AppCategoryList(),
        ],
      ),
    );
  }
}
