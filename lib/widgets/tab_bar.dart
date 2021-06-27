import 'package:flutter/material.dart';
import 'package:letchat/components/constant.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 16,
      ),
      height: 80,
      color: kBlack,
      child: TabBar(
        controller: tabController,
        indicator: ShapeDecoration(
          color: kYellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        tabs: [
          Tab(
            icon: Text(
              'Chat',
              style: kBodyText,
            ),
          ),
          Tab(
            icon: Text(
              'Status',
              style: kBodyText,
            ),
          ),
          Tab(
            icon: Text(
              'Call',
              style: kBodyText,
            ),
          ),
        ],
      ),
    );
  }
}
