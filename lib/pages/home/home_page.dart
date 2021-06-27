import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letchat/components/constant.dart';
import 'package:letchat/controller/message_controller.dart';
import 'package:letchat/widgets/all_chats.dart';
import 'package:letchat/widgets/recent_chats.dart';
import 'package:letchat/widgets/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kYellow,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.bars),
          onPressed: () => {},
          color: kBlack,
        ),
        title: Center(
          child: Text(
            'letChat',
            style: kBodyText,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(FontAwesomeIcons.camera),
            color: kBlack,
          ),
        ],
        elevation: 0.0,
      ),
      backgroundColor: kBlack,
      body: Column(
        children: [
          MyTabBar(tabController: tabController),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        RecentChats(),
                        AllChats(),
                      ],
                    ),
                  ),
                  Center(
                    child: Text('Status'),
                  ),
                  Center(
                    child: Text('Call'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kYellow,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          FontAwesomeIcons.commentDots,
          color: kBlack,
        ),
      ),
    );
  }
}
