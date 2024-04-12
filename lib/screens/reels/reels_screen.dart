part of '../screens.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Reels",
          style: TextStyle(
            fontSize: 26,
            fontWeight: bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera_outlined,
              color: whiteColor,
            ),
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/search/$index.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.transparent,
                      ],
                      begin: const Alignment(0, -.75),
                      end: const Alignment(0, .1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.transparent,
                      ],
                      end: const Alignment(0, -.75),
                      begin: const Alignment(0, .1),
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 14,
                          child: ReelsDetail(),
                        ),
                        Flexible(
                          flex: 2,
                          child: ReelsSideBar(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
