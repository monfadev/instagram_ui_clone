part of '../screens.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return [
              SliverAppBar(
                centerTitle: false,
                pinned: true,
                backgroundColor: whiteColor,
                elevation: 0,
                title: Row(
                  children: [
                    const Text(
                      "monfadev",
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 20,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "9+",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  Container(
                    height: 50,
                    width: 25,
                    margin: const EdgeInsets.only(left: defaultMargin),
                    child: Image.asset(
                      "assets/icons/plus_outline.png",
                      scale: 2,
                    ),
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: blackColor,
                      size: 28,
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Stack(
                            children: [
                              ClipOval(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/avatars/monfauzii.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add_circle_sharp,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        follow("12", "Posts"),
                        follow("1.152", "Followers"),
                        follow("500", "Following"),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: const Text(
                        "monfadev",
                        style: TextStyle(
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Text(
                        "@rfprivatestore",
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Text(
                        "@monfadev",
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  side: const BorderSide(
                                    color: greyBorderColor,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Edit Profile",
                                style: TextStyle(
                                  color: blackColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                            width: 40,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  side: const BorderSide(
                                    color: greyBorderColor,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.expand_more_outlined,
                                size: 20,
                                color: blackColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 95,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
                                child: Stack(
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        height: 65,
                                        width: 65,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/icons/stroke_seen_solid.png"),
                                          ),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage("assets/search/0.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                "Highlights",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: greyBorderColor),
                                ),
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                "New",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: PersistentHeader(
                  mnExtent: 50,
                  mxExtent: 50,
                  child: const TabBar(
                    labelColor: blackColor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: blackColor,
                    indicatorWeight: 1,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_on,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.assignment_ind_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CustomScrollView(
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate((_, index) {
                      return Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/search/$index.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }, childCount: 17),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate((_, index) {
                      return Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/search/$index.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }, childCount: 17),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget follow(String count, String text) {
    return Expanded(
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
