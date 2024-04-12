part of '../../screens.dart';

class ReelsSideBar extends StatelessWidget {
  const ReelsSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline, color: whiteColor),
          iconSize: 28,
        ),
        const Text(
          "1.67k",
          style: TextStyle(fontSize: 16, color: whiteColor),
        ),
        const SizedBox(height: 10),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat_bubble_outline, color: whiteColor),
          iconSize: 28,
        ),
        const Text(
          "975",
          style: TextStyle(fontSize: 16, color: whiteColor),
        ),
        const SizedBox(height: 10),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send_outlined, color: whiteColor),
          iconSize: 28,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz, color: whiteColor),
          iconSize: 28,
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            border: Border.all(color: whiteColor, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/avatars/monfadev.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
