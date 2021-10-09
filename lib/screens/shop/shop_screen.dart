part of '../screens.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  late ScrollController _scrollController;
  bool _showSearch = false;
  final List<String> category = [
    'Shops',
    'Videos',
    "Editor' Picks",
    "Collections",
    'Guides',
  ];

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _showSearch = _scrollController.offset > 43;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          CustomSearchBar(
            isShowSearch: _showSearch,
          ),
          SliverPersistentHeader(
            delegate: PersistentHeader(
              mxExtent: 42,
              mnExtent: 42,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: greyDarkColor,
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 22,
                        color: greyDarkColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverPersistentHeader(
            delegate: PersistentHeader(
              mnExtent: 35,
              mxExtent: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                children: category
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.only(left: defaultMargin),
                        child: Category(e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
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
                child: index == 0
                    ? Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Continue Shopping",
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: bold,
                          ),
                        ),
                      )
                    : SizedBox(),
              );
            }, childCount: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: defaultMargin, top: 20, bottom: defaultMargin),
              child: Text(
                "People from creators you follow >",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: ListView.builder(
                padding: EdgeInsets.only(left: defaultMargin),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/search/$index.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "monfadev",
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
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
                child: index == 0
                    ? Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Continue Shopping",
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: bold,
                          ),
                        ),
                      )
                    : SizedBox(),
              );
            }, childCount: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: defaultMargin, top: 20, bottom: defaultMargin),
              child: Text(
                "People from creators you follow >",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: ListView.builder(
                padding: EdgeInsets.only(left: defaultMargin),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/search/$index.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "monfadev",
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
