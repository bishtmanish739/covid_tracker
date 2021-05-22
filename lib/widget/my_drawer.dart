import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.local_hospital,
                  color: Colors.pink,
                  size: 40,
                ),
                Text('Covid Tacker ',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text(
                  'Please Wear mask and Stay safe',
                  style: TextStyle(color: Colors.black38),
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                    ),
                    Icon(
                      Icons.wash,
                      color: Colors.pink,
                      size: 40,
                    ),
                    Container(
                      width: 70,
                    ), //
                    Icon(
                      Icons.masks,
                      size: 40,
                      color: Colors.pink,
                    )
                  ],
                ),
                Text(
                  'Wash hand and wear mask',
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.book,
              color: Colors.pink,
            ),
            title: Text('Covid Symptom'),
            onTap: () {
              Navigator.pushNamed(context, '/Symptom');
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_circle_fill,
              color: Colors.pink,
            ),
            title: Text('Covid Vaccination '),
            onTap: () {
              Navigator.pushNamed(context, '/Vaccination');
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
