part of '../screens.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "Reels",
          style: TextStyle(
            fontSize: 26,
            fontWeight: bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
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
                      begin: Alignment(0, -.75),
                      end: Alignment(0, .1),
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
                      end: Alignment(0, -.75),
                      begin: Alignment(0, .1),
                    ),
                  ),
                ),
                Column(
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
