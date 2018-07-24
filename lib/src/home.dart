import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import screens

import './pages/camera.dart';
import './pages/status.dart';
import './pages/calls.dart';
import './pages/chat.dart';

class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),


        ],
        elevation: 0.7,


        title: new Text('New APP'),
        bottom: new TabBar(
          indicatorColor: Colors.white,
            controller: _tabController,

            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: 'Chats',),
              Tab(text: 'Status',),
              Tab(text: 'Calls',)
            ],
        ),

           
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(5.0),
          shrinkWrap: true,
          children: <Widget>[
            DrawerHeader(
              child: ListTile(
                title: Text(
                  'AP AOMSI 2018 Tirupati @ CKS TEJA Dental COllege, Tirupati',
                  maxLines: 5,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic),
                ),
                subtitle: Text('August 25 & 26 '),
                leading: CircleAvatar(
                  maxRadius: 50.0,
                  backgroundImage: NetworkImage('http://www.apaomsi2018.com/wp-content/uploads/2018/04/logo-aomsi-com.png'),
                ),
              ),
              //decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Speakers'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Schedule'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),



      
      body: TabBarView(
        controller: _tabController,

          children: <Widget>[
            new Camera(),
            new Chat(),
            new Status(),
            new Calls(),


          ],

      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Theme.of(context).primaryColor, onPressed: (){


      }, child: Icon(Icons.edit),),
    );
  }

}


