part of '../../screens.dart';

class Category extends StatelessWidget {
  final String text;

  const Category(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: greyBorderColor),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: blackColor,
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
