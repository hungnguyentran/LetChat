import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letchat/components/constant.dart';
import 'package:letchat/controller/message_controller.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text('Recent Chat'),
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
          itemCount: recentChats.length,
          itemBuilder: (context, int index) {
            final recentChat = recentChats[index];
            return Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(recentChat.avatar),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(recentChat.sender.name),
                      Text(recentChat.text),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: kRed,
                        child: Text(
                          recentChat.unreadCount.toString(),
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(recentChat.time),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
