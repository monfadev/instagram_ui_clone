part of '../../screens.dart';

class Feed extends StatefulWidget {
  final List<Map<String, dynamic>> mapFeed;
  const Feed({Key? key, required this.mapFeed}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: widget.mapFeed.length,
      itemBuilder: (context, index) {
        return FeedItem(
          avatar: widget.mapFeed[index]['avatar'],
          username: widget.mapFeed[index]['username'],
          location: widget.mapFeed[index]['location'],
          postingImage: widget.mapFeed[index]['posting_image'],
          description: widget.mapFeed[index]['description'],
          isAvatarFollower: widget.mapFeed[index]['is_avatar_follower'],
          isFollower: widget.mapFeed[index]['is_follower'],
          totalLike: widget.mapFeed[index]['total_like'],
        );
      },
    );
  }
}

class FeedItem extends StatelessWidget {
  final String avatar;
  final String username;
  final String location;
  final String postingImage;
  final String description;
  final String isAvatarFollower;
  final String isFollower;
  final int totalLike;

  const FeedItem({
    Key? key,
    required this.avatar,
    required this.username,
    required this.location,
    required this.postingImage,
    required this.description,
    required this.isAvatarFollower,
    required this.isFollower,
    required this.totalLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Row(
            children: [
              Image.asset(
                avatar,
                height: 40,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      location,
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icons/dot_horizontal.png',
                height: 20,
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Image.asset(
            postingImage,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/love_outline.png',
                      scale: 2,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/icons/comment_outline.png',
                      scale: 2,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/icons/share_outline.png',
                      scale: 2,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icons/bookmark_outline.png',
                scale: 2,
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      height: 26,
                      width: 26,
                      child: Image.asset(
                        isAvatarFollower,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'Liked by ',
                        children: [
                          TextSpan(
                            text: isFollower + ' ',
                            style: TextStyle(
                              fontWeight: bold,
                            ),
                          ),
                          TextSpan(
                            text: 'and' + ' ',
                            style: TextStyle(
                              fontWeight: normal,
                            ),
                          ),
                          TextSpan(
                            text: totalLike.toString() + ' others',
                            style: TextStyle(
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: username + ' ',
                        style: TextStyle(
                          fontWeight: bold,
                        ),
                        children: [
                          TextSpan(
                            text: description,
                            style: TextStyle(
                              fontWeight: normal,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'View all 22 comments',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: '1 hour ago • ',
                        style: TextStyle(
                          fontWeight: normal,
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                        children: [
                          TextSpan(
                            text: 'See Translation',
                            style: TextStyle(
                              fontWeight: semibold,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
