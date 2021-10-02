part of '../../screens.dart';

class ReelsDetail extends StatelessWidget {
  const ReelsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Row(
              children: [
                Text(
                  "monfadev",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  "   •  Follow",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            leading: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage("assets/avatars/monfadev.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              "Hello gais, my first reels",
              style: TextStyle(
                color: whiteColor,
                fontWeight: light,
              ),
            ),
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Row(
              children: [
                Container(
                  width: 125,
                  height: 20,
                  child: Marquee(
                    blankSpace: 20,
                    scrollAxis: Axis.horizontal,
                    velocity: 10,
                    text: "monfadev song",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: normal,
                    ),
                  ),
                ),
                Text(
                  "   •  Original Audio",
                  style: TextStyle(color: whiteColor),
                ),
              ],
            ),
            leading: Icon(
              Icons.graphic_eq_outlined,
              color: whiteColor,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
