
import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class Chat extends StatefulWidget {
  @override
  ChatState createState() {
    return new ChatState();
  }
}

class ChatState extends State<Chat> {
  ChatModelList chatModelList = new ChatModelList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatModelList.dummyData = [
      new ChatModel(name: 'hira', message: 'flutter s is amazinf', time: '15:00', avatarUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),
      new ChatModel(name: 'Pora', message: 'React is aslso s is amazinf', time: '05:10', avatarUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),
      new ChatModel(name: 'Newra', message: 'Spectre is here s is amazinf', time: '01:40', avatarUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),
      new ChatModel(name: 'New Hira', message: 'New Messafes s is down', time: '19:30', avatarUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),
      new ChatModel(name: 'PORA HIRA', message: 'Everyone has problems', time: '03:30', avatarUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),

    ];
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatModelList.dummyData.length,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: <Widget>[
              new Divider(
                height: 10.0,

              ),
              ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: new NetworkImage(chatModelList.dummyData[index].avatarUrl),

                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(chatModelList.dummyData[index].name, style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(chatModelList.dummyData[index].time, style: TextStyle(color: Colors.grey, fontSize: 14.0),),

                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(chatModelList.dummyData[index].message, style: TextStyle(color: Colors.grey, fontSize: 15.0),),
                ),
              ),
            ],

          );
        }

    );
  }
}
