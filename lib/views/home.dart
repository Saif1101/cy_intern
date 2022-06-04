import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:cy_intern/common/theme_colors.dart';
import 'package:cy_intern/views/widgets/achievement_detail_row.dart';
import 'package:cy_intern/views/widgets/blurred_image_foreground_text.dart';
import 'package:cy_intern/views/widgets/clan_member_tile.dart';
import 'package:cy_intern/views/widgets/discussion_detail_widget.dart';
import 'package:cy_intern/views/widgets/featured_performance_widget.dart';
import 'package:cy_intern/views/widgets/image_with_bottom_blur_text.dart';
import 'package:cy_intern/views/widgets/see_more_widget.dart';
import 'package:cy_intern/views/widgets/segment_header.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: [
          BottomNavigationBarItem(
              icon: Icon(
            Icons.home,
            color: Colors.white,
          ), 
          label: ''), 
          BottomNavigationBarItem(
              icon: Icon(
            Icons.star,
            color: Colors.white,
          ), 
          label: 'Achievements' ), 
          BottomNavigationBarItem(
              icon: Icon(
            Icons.leaderboard,
            color: Colors.white,
          ), 
          label: 'Leaderboard'), 
          BottomNavigationBarItem(
              icon: Icon(
            Icons.people,
            color: Colors.white,
          ), 
          label: 'Community'),
          BottomNavigationBarItem(
              icon:  CircleAvatar(
        backgroundImage: AssetImage('assets/avatar.png'),
      ), 
          label: 'Profile'),  
          
        ]),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                ImageWithBottomBlurForegroundText(
                    height: 300,
                    text: 'Hello',
                    image: ExactAssetImage('assets/clan_banner.jpg')),
                Divider(
                  color: Colors.white,
                  thickness: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SegmentHeader(
                        header: "Achievements",
                      ),
                      Achievements(),
                      SegmentDivider(),
                      SegmentHeader(header: 'Featured Performance'),
                      FeaturedPerformances(),
                      SeeMoreWidget(),
                      SegmentDivider(),
                      SegmentHeader(header: "Live Clan Activities"),
                      ActivitiesColumn(),
                      SeeMoreWidget(),
                      SegmentDivider(),
                      SegmentHeader(header: 'Clan Discussions'),
                      DiscussionsWidget(),
                      SeeMoreWidget(),
                      SegmentDivider(),
                      SegmentHeader(header: 'Clan Members'),
                      ClanMembersColumn(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class ClanMembersColumn extends StatelessWidget {
  const ClanMembersColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClanMemberTile(name: 'Member#1', designation: 'Clan Head'),
        ClanMemberTile(name: 'Member#2', designation: 'Clan Debating Sensei'),
      ],
    );
  }
}

class DiscussionsWidget extends StatelessWidget {
  const DiscussionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DiscussionDetailWidget(
            title: 'General Thread', message: '15 Unread Messages'),
        DiscussionDetailWidget(
            title: '(live) Anyone enthu for trading league',
            message: '10 Unread Messages'),
        DiscussionDetailWidget(
            title:
                '(live) Anyone enthu for trading league this season for top items',
            message: '15 Unread Messages'),
      ],
    );
  }
}

class ActivitiesColumn extends StatelessWidget {
  const ActivitiesColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlurredImageWithForegroundText(
            height: 100,
            text: 'Live Activity #1',
            image: AssetImage('assets/smoke_bg.jpg')),
        SizedBox(
          height: 8,
        ),
        BlurredImageWithForegroundText(
            height: 100,
            text: 'Live Activity #1',
            image: AssetImage('assets/smoke_bg.jpg')),
      ],
    );
  }
}

class FeaturedPerformances extends StatelessWidget {
  const FeaturedPerformances({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeaturedPerformanceDetailRow(),
        SizedBox(
          height: 15,
        ),
        FeaturedPerformanceDetailRow(),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class Achievements extends StatelessWidget {
  const Achievements({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AchievementDetailRow(
          leadingText: 'Current rank',
          trailingWidget: Icon(
            Icons.shield,
            color: Colors.white,
            size: 72,
          ),
        ),
        AchievementDetailRow(
          leadingText: 'League Ranking',
          trailingText: '11th',
        ),
        AchievementDetailRow(
          leadingText: 'Experience',
          trailingText: '3000 xp',
        ),
        AchievementDetailRow(
          leadingText: '# of Wins',
          trailingText: '3',
        ),
      ],
    );
  }
}

class SegmentDivider extends StatelessWidget {
  const SegmentDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        color: Colors.white,
        thickness: 5,
      ),
    );
  }
}
