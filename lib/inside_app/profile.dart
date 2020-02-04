import 'package:flutter/material.dart';
import 'package:dipena_full/inside_app/app_data.dart';
import 'package:dipena_full/inside_app/user_profile.dart';

import 'edit_profile.dart';
import 'history.dart';
import 'makedeal.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Pics pics;

  @override
  void initState() {
    pics = AppData.pics[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: DrawerHeader(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.edit,
                  color: Color.fromRGBO(244, 217, 66, 1),
                  size: 30,
                ),
                title: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () async {
                  var navigationResult = await Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => Edit(),
                    ),
                  );
                  if (navigationResult == true) {
                    MaterialPageRoute(
                      builder: (context) => Edit(),
                    );
                  }
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.av_timer,
                  color: Color.fromRGBO(244, 217, 66, 1),
                  size: 30,
                ),
                title: Text(
                  'History',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () async {
                  var navigationResult = await Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => History(),
                    ),
                  );
                  if (navigationResult == true) {
                    MaterialPageRoute(
                      builder: (context) => History(),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450),
                child: ListTile(
                  leading: Icon(
                    Icons.supervised_user_circle,
                    color: Color.fromRGBO(244, 217, 66, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: PreferredSize(
              preferredSize: Size.fromHeight(62),
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 1,
                centerTitle: true,
                leading: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                title: Text(
                  'My Profile',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(244, 217, 66, 1),
                  ),
                ),
                iconTheme: IconThemeData(
                  color: Color.fromRGBO(244, 217, 61, 1),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 30,
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/images/Account_Profile.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'roxann',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.black,
                                size: 17,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Text(
                                  'Depok, Indonesia',
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 2,
                                    wordSpacing: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                ),
                child: Container(
                  color: Color.fromRGBO(244, 217, 66, 1),
                  width: 100,
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'A designer and a lifetime learner \n'
                      'Open to any kind of designing projects',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 30,
                  left: 30,
                  bottom: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '10k',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      width: 0.2,
                      height: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '526',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      width: 0.2,
                      height: 22,
                    ),
                    RaisedButton(
                      splashColor: Colors.purpleAccent,
                      elevation: 1,
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Color.fromRGBO(244, 217, 66, 1),
                      child: Text(
                        'Make Deals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                        ),
                      ),
                      onPressed: () async {
                        var navigationResult = await Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => MakeDeal(),
                          ),
                        );
                        if (navigationResult == true) {
                          MaterialPageRoute(
                            builder: (context) => MakeDeal(),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Wrap(
              children: <Widget>[
                for (int i = 0; i < AppData.pics.length; i++)
                  GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.width / 3,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppData.pics[i].imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
