import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/models/bottom_bar_item.dart';
import 'package:mounts_of_the_world/util/color.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  List<BottomBarItem> barItems = [
    BottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    BottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
    BottomBarItem(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    BottomBarItem(
        icon: Icons.person_outline, label: 'Profile', isSelected: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(barItems.length, (index) {
          BottomBarItem barItem = barItems[index];
          Widget barItemWidget;
          if (barItem.isSelected) {
            barItemWidget = Container(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MainColor.color,
              ),
              child: Row(
                children: [
                  Icon(barItem.icon, color: Colors.white),
                  const SizedBox(width: 5),
                  Text(barItem.label,
                      style: const TextStyle(color: Colors.white)),
                ],
              ),
            );
          } else {
            barItemWidget = IconButton(
              icon: Icon(barItem.icon, color: Colors.grey),
              onPressed: () {
                setState(() {
                  for (var item in barItems) {
                    item.isSelected = item == barItem;
                  }
                });
              },
            );
          }
          return barItemWidget;
        }),
      ),
    );
  }
}
