part of '../../screens.dart';

class CustomSearchBar extends StatelessWidget {
  final bool isShowSearch;
  const CustomSearchBar({required this.isShowSearch, super.key});

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
              child: const TextField(
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
          : const Text(
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
          icon: const Icon(
            Icons.class_outlined,
            color: blackColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}
