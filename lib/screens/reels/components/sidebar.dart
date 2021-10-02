part of '../../screens.dart';

class ReelsSideBar extends StatelessWidget {
  const ReelsSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline, color: whiteColor),
            iconSize: 28,
          ),
          Text(
            "1.67k",
            style: TextStyle(fontSize: 16, color: whiteColor),
          ),
          SizedBox(height: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline, color: whiteColor),
            iconSize: 28,
          ),
          Text(
            "975",
            style: TextStyle(fontSize: 16, color: whiteColor),
          ),
          SizedBox(height: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined, color: whiteColor),
            iconSize: 28,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: whiteColor),
            iconSize: 28,
          ),
          SizedBox(height: 10),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(color: whiteColor, width: 2),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage("assets/avatars/monfadev.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
