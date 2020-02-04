import 'package:flutter/material.dart';

import 'chat.dart';

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

class Deal extends StatefulWidget {
  @override
  _DealState createState() => _DealState();
}

class _DealState extends State<Deal> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: SizeConfig.safeBlockHorizontal * 100,
                  height: SizeConfig.safeBlockVertical * 55,
                  child: Image.asset(
                    'assets/images/Post_2.jpg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 40,
                  ),
                  child: ClipOval(
                    child: Material(
                      color: Color.fromRGBO(244, 217, 66, 1),
                      child: InkWell(
                        splashColor: Colors.purpleAccent,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(
                              Icons.arrow_back,
                            ),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 330,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                            right: 30,
                            left: 20,
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
                                          'assets/images/Profile_Icon_3.jpg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'artgeek',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      color: Color.fromRGBO(244, 217, 66, 1),
                                      icon: Icon(
                                        Icons.message,
                                      ),
                                      onPressed: () async {
                                        var navigationResult =
                                            await Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                            builder: (context) => Chat(),
                                          ),
                                        );
                                        if (navigationResult == true) {
                                          MaterialPageRoute(
                                            builder: (context) => Chat(),
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 25,
                                  left: 10,
                                ),
                                child: Container(
                                  width: 450,
                                  height: 2,
                                  color: Color.fromRGBO(244, 217, 66, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 30,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Real Eyes Realize Real Lies',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 30,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'This is a quote by Tupac Shakur. “Don’t believe \n'
                                'everything you hear. Real eyes realize real lies”.',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            right: 285,
                          ),
                          child: Container(
                            color: Color.fromRGBO(244, 217, 66, 1),
                            width: 50,
                            height: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 30,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Deal\'s Offerment',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 30,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '• I do art for your wall',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 30,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '• Currently available for projects, \n'
                                'not contracts',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 30,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '• Have 4 people as my art team for you',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: SizedBox(
                            width: 350,
                            height: 50,
                            child: RaisedButton(
                              splashColor: Colors.purpleAccent,
                              elevation: 2,
                              padding: EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: Color.fromRGBO(244, 217, 66, 1),
                              child: Text(
                                'TAKE DEAL',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
