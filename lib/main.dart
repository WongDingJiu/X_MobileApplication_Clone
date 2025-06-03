import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Mobile Application Clone',
      theme: ThemeData.light(),
      home: XHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class XHomePage extends StatelessWidget {
  const XHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            width: 28,
            height: 28,
            margin: EdgeInsets.only(left: 8),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: const Color.fromARGB(255, 183, 183, 183),
              child: Icon(Icons.person, size: 25, color: Colors.white),
            ),
          ),
          title: Image.asset('assets/x_logo.png', height: 50),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.grey.shade400, width: 1.3),
                ),
              ),
              child: Text("Get Premium", style: TextStyle(fontSize: 16)),
            ),
            SizedBox(width: 8),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade800,
            labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            tabs: [Tab(text: "For you"), Tab(text: "Following")],
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: [TweetList(), Center(child: Text("Following feed"))],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
              icon: Image.asset('assets/grok.png', width: 24, height: 24),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: '',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}

class TweetList extends StatelessWidget {
  final List<Map<String, dynamic>> tweets = [
    {
      'profilePic':
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      'username': 'Monad Launch',
      'handle': '@MonadLaunch',
      'time': '1d',
      'verified': false,
      'content':
          'Drop your Monad wallet address if you need some MON\n\nHurry up!!!',
      'comments': '4K',
      'retweets': '759',
      'likes': '3K',
      'views': '180K',
      'saved': '',
      'upload': '',
    },
    {
      'profilePic':
          'https://images.unsplash.com/photo-1464863979621-258859e62245?q=80&w=1972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'username': 'natatat.',
      'handle': '@natatat__',
      'time': 'Ad',
      'verified': true,
      'content':
          'Be an insider, Stay ahead of the launch on Solana. Link in bio here 👉\n@JamesBTPCR a.ελ',
      'image': 'assets/sample.png',
      'comments': '4K',
      'retweets': '5658',
      'likes': '3K',
      'views': '180K',
      'saved': '',
      'upload': '',
    },
    {
      'profilePic':
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'username': 'Monad Launch',
      'handle': '@MonadLaunch',
      'time': '3d',
      'verified': false,
      'content':
          'Drop your Monad wallet address if you need some MON\n\nHurry up!!!',
      'comments': '4K',
      'retweets': '465',
      'likes': '7K',
      'views': '180K',
      'saved': '',
      'upload': '',
    },
    {
      'profilePic':
          'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'username': 'natatat.',
      'handle': '@natatat__',
      'time': 'Ad',
      'verified': true,
      'content':
          'Be an insider, Stay ahead of the launch on Solana. Link in bio here 👉\n@JamesBTPCR a.ελ',
      'image': 'assets/sample.png',
      'comments': '4K',
      'retweets': '999',
      'likes': '3K',
      'views': '150K',
      'saved': '',
      'upload': '',
    },
  ];

  TweetList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        final tweet = tweets[index];
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(tweet['profilePic']),
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          tweet['username'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        if (tweet['verified'] == true)
                          Icon(Icons.verified, color: Colors.blue, size: 16),
                        SizedBox(width: 5),
                        Text(
                          tweet['handle'],
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '· ${tweet['time']}',
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/grok.png',
                          width: 16,
                          height: 16,
                          color: Colors.grey.shade800,
                        ),
                        const SizedBox(width: 5),
                        Icon(Icons.more_horiz, color: Colors.grey.shade400),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(tweet['content']),
                    if (tweet.containsKey('image'))
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Image.asset(tweet['image']),
                      ),
                    if (tweet.containsKey('comments'))
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TweetAction(
                            icon: Icons.chat_bubble_outline,
                            label: tweet['comments'],
                          ),
                          TweetAction(
                            icon: Icons.repeat,
                            label: tweet['retweets'],
                          ),
                          TweetAction(
                            icon: Icons.favorite_border,
                            label: tweet['likes'],
                          ),
                          TweetAction(
                            icon: Icons.bar_chart_outlined,
                            label: tweet['views'],
                          ),
                          TweetAction(
                            icon: Icons.bookmark_border,
                            label: tweet['saved'],
                          ),
                          TweetAction(
                            icon: Icons.upload_sharp,
                            label: tweet['upload'],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TweetAction extends StatelessWidget {
  final IconData icon;
  final String label;
  const TweetAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey.shade800),
        SizedBox(width: 4),
        Text(label, style: TextStyle(color: Colors.grey.shade800)),
      ],
    );
  }
}
