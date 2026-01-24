import 'package:flutter/material.dart';
import 'package:simple_app/tabs/feed_view.dart';
import 'package:simple_app/tabs/reels_view.dart';
import 'package:simple_app/tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Widget> tabs = const [
    Tab(icon: Icon(Icons.image, color: Colors.grey)),
    Tab(icon: Icon(Icons.video_collection, color: Colors.grey)),
    Tab(icon: Icon(Icons.bookmark, color: Colors.grey)),
  ];

  final List<Widget> tabBarViews = const [
    FeedView(),

    ReelsView(),

    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '416',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Following', style: TextStyle(color: Colors.grey)),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '986',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Followers', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Andriy Vakulenko',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(' | ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  'Developer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 5),
            Text(
              'UI Designer & Youtuber',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 5),
            Text(
              'youtube.com/LearnUkrainianwithVakulenko',
              style: TextStyle(
                color: Colors.blue[500],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(child: Text('Edit Profile')),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            TabBar(tabs: tabs),
            SizedBox(height: 1000, child: TabBarView(children: tabBarViews)),
          ],
        ),
      ),
    );
  }
}
