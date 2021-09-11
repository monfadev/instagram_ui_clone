part of '../screens.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: whiteColor,
            toolbarHeight: 60,
            elevation: 0,
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
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
          // add package sliver_staggered_grid
          SliverStaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: List.generate(
              17,
              (index) => _gridItems(index),
            ),
            staggeredTiles: List.generate(17, (index) {
              int value = index % 18;
              if (value == 2) {
                // Reels
                return StaggeredTile.count(1, 2);
              } else if (value == 8) {
                // IG TV
                return StaggeredTile.count(2, 2);
              }
              // Anything
              return StaggeredTile.count(1, 1);
            }),
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
        fit: BoxFit.cover,
      ),
      if (index % 3 == 0)
        Padding(
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
          padding: EdgeInsets.all(8),
          child: Image.asset(
            'assets/icons/reels_outline.png',
            alignment: Alignment.bottomLeft,
            scale: 1.8,
            color: whiteColor,
          ),
        )
      else
        Padding(
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
