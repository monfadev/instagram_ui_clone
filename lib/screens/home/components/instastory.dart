part of '../../screens.dart';

class Instastory extends StatefulWidget {
  final List<Map<String, dynamic>> mapInstastory;

  const Instastory({Key? key, required this.mapInstastory}) : super(key: key);

  @override
  _InstastoryState createState() => _InstastoryState();
}

class _InstastoryState extends State<Instastory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.mapInstastory.length,
        itemBuilder: (context, index) {
          return InstastoryItem(
            avatar: widget.mapInstastory[index]['avatar'],
            username: widget.mapInstastory[index]['username'],
            isUser: widget.mapInstastory[index]['is_user'],
            isAdmin: widget.mapInstastory[index]['is_admin'],
            isInstastory: widget.mapInstastory[index]['is_instastory'],
            isStorySeen: widget.mapInstastory[index]['is_story_seen'],
            isRightMargin:
                (index == widget.mapInstastory.length - 1) ? defaultMargin : 0,
          );
        },
      ),
    );
  }
}

class InstastoryItem extends StatelessWidget {
  final String avatar;
  final String username;
  final bool isUser;
  final bool isAdmin;
  final bool isInstastory;
  final bool isStorySeen;
  final double isRightMargin;

  const InstastoryItem({
    Key? key,
    required this.avatar,
    required this.username,
    required this.isUser,
    required this.isAdmin,
    required this.isInstastory,
    required this.isStorySeen,
    required this.isRightMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.only(left: 14, right: isRightMargin),
              child: Stack(
                children: [
                  ClipOval(
                    child: Container(
                      height: 65,
                      width: 65,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        image: (isStorySeen == true)
                            ? DecorationImage(
                                image: AssetImage(
                                  'assets/icons/stroke_seen_solid.png',
                                ),
                              )
                            : (isAdmin == true)
                                ? DecorationImage(
                                    image: AssetImage(
                                      'assets/icons/stroke_new_dash.png',
                                    ),
                                  )
                                : DecorationImage(
                                    image: (isInstastory == true)
                                        ? AssetImage(
                                            'assets/icons/stroke_on_solid.png',
                                          )
                                        : AssetImage(
                                            avatar,
                                          ),
                                  ),
                      ),
                      child: (isInstastory == true)
                          ? Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    avatar,
                                  ),
                                ),
                              ),
                            )
                          : null,
                    ),
                  ),
                  if (isUser == true)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: Icon(
                          Icons.add_circle_sharp,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 75,
              margin: EdgeInsets.only(left: 14, right: isRightMargin),
              child: Text(
                username,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
