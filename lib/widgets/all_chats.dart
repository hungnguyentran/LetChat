import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letchat/components/constant.dart';
import 'package:letchat/controller/message_controller.dart';

class AllChats extends StatelessWidget {
  const AllChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text('All Chat'),
                        Spacer(),
                        Icon(FontAwesomeIcons.search),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: allChats.length,
            itemBuilder: (context, int index) {
              final allChat = allChats[index];
              return Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(allChat.avatar),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(allChat.sender.name),
                        Text(allChat.text),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        allChat.unreadCount == 0
                            ? Icon(
                                FontAwesomeIcons.checkDouble,
                                color: kBlack,
                              )
                            : CircleAvatar(
                                radius: 8,
                                backgroundColor: kRed,
                                child: Text(
                                  allChat.unreadCount.toString(),
                                  style: TextStyle(
                                    color: kWhite,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                        SizedBox(height: 10),
                        Text(allChat.time),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
