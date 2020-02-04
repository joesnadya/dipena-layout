import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          PreferredSize(
            preferredSize: Size.fromHeight(62),
            child: AppBar(
              backgroundColor: Color.fromRGBO(244, 217, 66, 1),
              elevation: 1,
              centerTitle: true,
              title: Text(
                'Comment',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          new CommentData(
            icon: 'assets/images/Profile_Icon_5.jpg',
            username: 'flowerstem',
            comment: 'This is epic!',
          ),
          new CommentData(
            icon: 'assets/images/Profile_Icon_6.jpg',
            username: 'dimples',
            comment: 'Can we collab?',
          ),
          new CommentData(
            icon: 'assets/images/Profile_Icon_7.jpg',
            username: 'makeitright',
            comment: 'I cannnot believe someone can be this creative',
          ),
          new CommentData(
            icon: 'assets/images/Profile_Icon_8.jpg',
            username: 'dionysus',
            comment: 'Wow this is what talent looks like',
          ),
        ],
      ),
    );
  }
}

class CommentData extends StatelessWidget {
  CommentData({
    this.icon,
    this.username,
    this.comment,
  });

  final String icon;
  final String username;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(50),
                        offset: Offset(0, 0),
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  icon,
                                ),
                                minRadius: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              username,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                              ),
                            ),
                            Text(
                              comment,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              right: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
