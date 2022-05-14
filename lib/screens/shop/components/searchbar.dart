part of '../../screens.dart';

class CustomSearchBar extends StatelessWidget {
  final bool isShowSearch;
  const CustomSearchBar({required this.isShowSearch, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      pinned: true,
      backgroundColor: whiteColor,
      toolbarHeight: 60,
      elevation: 0,
      title: isShowSearch
          ? Container(
              height: 40,
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
            )
          : Text(
              "Shop",
              style: TextStyle(
                color: blackColor,
                fontSize: 26,
                fontWeight: bold,
              ),
            ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.class_outlined,
            color: blackColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}
