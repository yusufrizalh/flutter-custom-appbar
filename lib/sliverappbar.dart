// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: IconButton(
                    onPressed: () {
                      print('Menekan Home');
                    },
                    icon: Icon(Icons.home)),
                backgroundColor: Colors.green,
                actions: <Widget>[
                  IconButton(
                      onPressed: () {
                        print('Menekan Settings');
                      },
                      icon: Icon(Icons.settings))
                ],
                expandedHeight: 200.0,
                floating: false,
                snap: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    'Sliver AppBar',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  background: Image(
                    image: AssetImage('assets/images/images_2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('Belajar Custom SliverAppBar')],
            ),
          )),
    );
  }
}
