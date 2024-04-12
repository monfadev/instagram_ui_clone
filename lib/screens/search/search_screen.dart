part of '../screens.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static const tiles = [
    GridTile(2, 2),
    GridTile(2, 1),
    GridTile(1, 2),
    GridTile(1, 1),
    GridTile(2, 2),
    GridTile(1, 2),
    GridTile(1, 1),
    GridTile(3, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
    GridTile(1, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: whiteColor,
            toolbarHeight: 60,
            elevation: 0,
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
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
          SliverToBoxAdapter(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                ...tiles.mapIndexed((index, tile) {
                  return StaggeredGridTile.count(
                    crossAxisCellCount: tile.crossAxisCount,
                    mainAxisCellCount: tile.mainAxisCount,
                    child: _gridItems(index),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _gridItems(int index) {
  return Stack(
    fit: StackFit.expand,
    children: [
      Image.asset(
        'assets/search/$index.png',
        fit: BoxFit.fill,
      ),
      if (index % 3 == 0)
        const Padding(
          padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.play_arrow,
              color: whiteColor,
              size: 28,
            ),
          ),
        )
      else if (index == 2)
        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/icons/reels_outline.png',
            alignment: Alignment.bottomLeft,
            scale: 1.8,
            color: whiteColor,
          ),
        )
      else
        const Padding(
          padding: EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.photo_library,
              color: whiteColor,
              size: 22,
            ),
          ),
        ),
    ],
  );
}

class GridTile {
  const GridTile(this.crossAxisCount, this.mainAxisCount);
  final int crossAxisCount;
  final int mainAxisCount;
}
