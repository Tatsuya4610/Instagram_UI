import 'package:flutter/material.dart';
import 'package:instagram_ver_flutter/model/story.dart';
import 'package:instagram_ver_flutter/model/post.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Feed extends StatelessWidget {
  final List<Story> _stories = [
    Story(
      imageUrl:
      "https://images.pexels.com/photos/1741205/pexels-photo-1741205.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      name: "タマ",
    ),
    Story(
      imageUrl:
      "https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      name: "ソルト",
    ),
    Story(
      imageUrl:
      "https://images.pexels.com/photos/4587959/pexels-photo-4587959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      name: "ミケ",
    ),
    Story(
      imageUrl:
      "https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
      name: "ココア",
    ),
    Story(
      imageUrl:
      "https://images.pexels.com/photos/2817430/pexels-photo-2817430.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      name: "ポチ",
    ),
    Story(
      imageUrl:
      "https://images.pexels.com/photos/4734723/pexels-photo-4734723.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      name: "ミー",
    ),
  ];

  final List<Post> posts = [
    Post(
      username: 'タマ',
      userImage:
      'https://images.pexels.com/photos/1741205/pexels-photo-1741205.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      postImage:
      'https://images.pexels.com/photos/1741205/pexels-photo-1741205.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      caption: '見出し。見出し。見出し。見出し。見出し。',
    ),
    Post(
      username: 'ソルト',
      userImage:
      'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      postImage:
      'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      caption: '見出し。見出し。見出し。見出し。見出し。',
    ),
    Post(
      username: 'ミケ',
      userImage:
      'https://images.pexels.com/photos/4587959/pexels-photo-4587959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      postImage:
      'https://images.pexels.com/photos/4587959/pexels-photo-4587959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      caption: '見出し。見出し。見出し。見出し。見出し。',
    ),
    Post(
      username: 'ココア',
      userImage:
      'https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      postImage:
      'https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      caption: '見出し。見出し。見出し。見出し。見出し。',
    ),
    Post(
      username: 'ポチ',
      userImage:
      'https://images.pexels.com/photos/2817430/pexels-photo-2817430.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      postImage:
      'https://images.pexels.com/photos/2817430/pexels-photo-2817430.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      caption: '見出し。見出し。見出し。見出し。見出し。',
    ),
    Post(
      username: 'ミー',
      userImage:
      'https://images.pexels.com/photos/4734723/pexels-photo-4734723.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      postImage:
      'https://images.pexels.com/photos/4734723/pexels-photo-4734723.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      caption: '見出し。見出し。見出し。見出し。見出し。',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'ストーリーズ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '全て見る',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListView(
                scrollDirection:
                Axis.horizontal, //横にView。ただし、Containerの縦横の指定必須。
                shrinkWrap:
                true, //これをしないとエラー:Vertical viewport was given unbounded height.
                children: _stories.map((story) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFF8e44ad),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image(
                              image: NetworkImage(story.imageUrl),
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(story.name),
                    ],
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), //全体スクロール。
                itemCount: posts.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image(
                                        image: NetworkImage(
                                            posts[index].userImage),
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(posts[index].username),
                                  ],
                                ),
                                IconButton(
                                    icon: Icon(SimpleLineIcons.options),
                                    onPressed: () {}),
                              ],
                            )),
                        FadeInImage( //画像読み込むまでの代わりの画像表示。
                          image: NetworkImage(
                            posts[index].postImage,
                          ),
                          placeholder : AssetImage('assets/images/placeholder.png'),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(FontAwesome.heart_o),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(FontAwesome.comment_o),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(FontAwesome.send_o),
                                    onPressed: () {}),
                              ],
                            ),
                            IconButton(
                                icon: Icon(FontAwesome.bookmark_o),
                                onPressed: () {}),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('いいね！：'),
                                  Text(posts[0].username,style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(posts[index].username,style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 5,),
                                  Text(posts[index].caption),
                                ],
                              ),
                              Container(alignment: Alignment.topLeft, child: Text('1月1日')),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
