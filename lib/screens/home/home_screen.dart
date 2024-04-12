part of '../screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: 60,
        elevation: 0,
        title: Image.asset(
          'assets/logo/instagram.png',
          height: 35,
        ),
        actions: [
          Container(
            height: 50,
            width: 25,
            margin: const EdgeInsets.only(left: defaultMargin),
            child: Image.asset(
              'assets/icons/plus_outline.png',
              scale: 2,
            ),
          ),
          Container(
            height: 50,
            width: 25,
            margin: const EdgeInsets.only(left: 25),
            child: Image.asset(
              'assets/icons/love_outline.png',
              scale: 2,
            ),
          ),
          Container(
            height: 50,
            width: 25,
            margin: const EdgeInsets.only(left: 25),
            child: Image.asset(
              'assets/icons/message_outline.png',
              scale: 2,
            ),
          ),
          const SizedBox(width: defaultMargin),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // INSTASTORY
            Instastory(
              mapInstastory: InstastoryData.mapInstastory,
            ),

            Divider(height: 3),

            SizedBox(height: 5),

            // FEED
            Feed(
              mapFeed: FeedData.mapFeed,
            ),
          ],
        ),
      ),
    );
  }
}
