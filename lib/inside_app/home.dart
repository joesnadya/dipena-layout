import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';

import 'list_chat.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Container(
                  width: SizeConfig.safeBlockHorizontal * 395,
                  height: SizeConfig.safeBlockVertical * 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Color.fromRGBO(244, 217, 66, 1),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Dipena',
                          style: TextStyle(
                            color: Color.fromRGBO(244, 217, 66, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 1,
                            vertical: 5,
                          ),
                          child: IconButton(
                            color: Color.fromRGBO(244, 217, 66, 1),
                            iconSize: 25,
                            icon: Icon(
                              Icons.message,
                            ),
                            onPressed: () async {
                              var navigationResult = await Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => ChatList(),
                                ),
                              );
                              if (navigationResult == true) {
                                MaterialPageRoute(
                                  builder: (context) => ChatList(),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              new HomeData(
                icon: 'assets/images/Profile_Icon_1.png',
                username: 'joesnadya',
                post: 'assets/images/Post_1.jpg',
                likes: '2,756',
                comments: '400',
                cat: 'Photography',
                title: 'Summer Breeze',
                desc: 'A breeze is a light, cool wind. One of the best \n'
                    'things about being at the beach on a hot \n'
                    'summer day is feeling the gentle breeze.',
              ),
              new HomeData(
                icon: 'assets/images/Profile_Icon_2.jpg',
                username: 'azzuhra',
                post: 'assets/images/Post_4.jpg',
                likes: '1,789',
                comments: '231',
                cat: 'Design',
                title: 'Los Angeles',
                desc: 'An avant-garde movement music characterized\n'
                    'by the repetition of very short phrases which\n'
                    'change gradually, producing a hypnotic effect.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeData extends StatelessWidget {
  HomeData({
    this.icon,
    this.username,
    this.post,
    this.likes,
    this.comments,
    this.title,
    this.desc,
    this.cat,
  });

  final String icon;
  final String username;
  final String post;
  final String likes;
  final String comments;
  final String title;
  final String desc;
  final String cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            width: SizeConfig.safeBlockHorizontal * 100,
            height: SizeConfig.safeBlockVertical * 92,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                  ),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image(
                                width: 50,
                                height: 50,
                                image: AssetImage(
                                  icon,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          username,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              post,
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  LikeTwo(),
                                  Text(
                                    likes,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 25,
                                    icon: Icon(
                                      FontAwesomeIcons.comment,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    comments,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: 15,
                              right: 30,
                            ),
                            child: Text(
                              cat,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 30,
                              ),
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 30,
                              ),
                              child: Text(
                                desc,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 260,
                        ),
                        child: RaisedButton(
                          splashColor: Colors.purpleAccent,
                          elevation: 2,
                          padding: EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Color.fromRGBO(244, 217, 66, 1),
                          child: Text(
                            'SEE DEAL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LikeTwo extends StatefulWidget {
  @override
  _LikeTwoState createState() => _LikeTwoState();
}

class _LikeTwoState extends State<LikeTwo> {
  bool liked = false;

  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(
              liked ? Icons.favorite : Icons.favorite_border,
              color: liked ? Color.fromRGBO(244, 217, 66, 1) : Colors.black,
            ),
            iconSize: 30,
            onPressed: () => _pressed(),
          ),
        ],
      ),
    );
  }
}
