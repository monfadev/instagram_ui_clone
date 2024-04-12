part of '../../screens.dart';

class ReelsDetail extends StatelessWidget {
  const ReelsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const ListTile(
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
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
              SizedBox(
                width: 125,
                height: 20,
                child: Marquee(
                  blankSpace: 20,
                  scrollAxis: Axis.horizontal,
                  velocity: 10,
                  text: "monfadev song",
                  style: const TextStyle(
                    color: whiteColor,
                    fontWeight: normal,
                  ),
                ),
              ),
              const Text(
                "   •  Original Audio",
                style: TextStyle(color: whiteColor),
              ),
            ],
          ),
          leading: const Icon(
            Icons.graphic_eq_outlined,
            color: whiteColor,
            size: 16,
          ),
        ),
      ],
    );
  }
}
