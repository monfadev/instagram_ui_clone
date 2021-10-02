part of '../screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final PageStorageBucket _bucket = PageStorageBucket();

  final List<Widget> pages = const <Widget>[
    HomeScreen(
      key: PageStorageKey<String>('Home'),
    ),
    SearchScreen(
      key: PageStorageKey<String>('Search'),
    ),
    ReelsScreen(
      key: PageStorageKey<String>('Reels'),
    ),
    ShopScreen(
      key: PageStorageKey<String>('Shop'),
    ),
    ProfileScreen(
      key: PageStorageKey<String>('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: _bucket,
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: (_currentIndex == 2) ? blackColor : whiteColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 2,
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home_outline.png',
              scale: 2,
              color: (_currentIndex == 2) ? whiteColor : blackColor,
            ),
            activeIcon: Image.asset(
              'assets/icons/home_filled.png',
              scale: 2,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/search_outline.png',
              scale: 2,
              color: (_currentIndex == 2) ? whiteColor : blackColor,
            ),
            activeIcon: Image.asset(
              'assets/icons/search_filled.png',
              scale: 2,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/reels_outline.png',
              scale: 2,
              color: (_currentIndex == 2) ? whiteColor : blackColor,
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/shop_outline.png',
              scale: 2,
              color: (_currentIndex == 2) ? whiteColor : blackColor,
            ),
            activeIcon: Image.asset(
              'assets/icons/shop_filled.png',
              scale: 2,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/avatars/monfauzii.png',
                  ),
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
