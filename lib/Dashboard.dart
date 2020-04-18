import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({
    Key key,
  }) : super(key: key);

  @override
  DashboardScreenState createState() {
    return new DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  DashboardScreenState();

  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }


  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
        FlatButton(
          color: Colors.white,
          onPressed: () {
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.dashboard),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: Colors.white,
          onPressed: () {
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.exit_to_app),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Forms",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: Colors.white,
          onPressed: () {
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.category),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Detail",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Dasboard'),
          titleSpacing: 0.0,
        ),
        drawer: Padding(
          padding: EdgeInsets.only(top: 56),
          child: Drawer(child: listDrawerItems(true))),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: new Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text('data')
              ],
            ),
          ),
        ));
  }
}
