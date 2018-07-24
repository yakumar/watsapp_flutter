import 'package:flutter/material.dart';

import '../models/callModel.dart';

class Calls extends StatefulWidget {
  @override
  CallsState createState() {
    return new CallsState();
  }
}

class CallsState extends State<Calls> {
  CallModelList callModelList = new CallModelList();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    callModelList.callModelList = [
      new CallModel(name: 'Hira', timeOfCall: 'Sun 15:30 am', imageUrl: 'http://worldartsme.com/images/it-person-clipart-1.jpg'),
      new CallModel(name: 'Pora', timeOfCall: 'Sun 15:30 am', imageUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),
      new CallModel(name: 'New Ra', timeOfCall: 'Sun 15:30 am', imageUrl: 'http://worldartsme.com/images/it-person-clipart-1.jpg'),
      new CallModel(name: 'Hira Hira asanasnas', timeOfCall: 'Sun 15:30 am', imageUrl: 'http://cdn.onlinewebfonts.com/svg/img_518099.png'),
      new CallModel(name: 'Rey reyye reyy', timeOfCall: 'Sun 15:30 am', imageUrl: 'http://worldartsme.com/images/it-person-clipart-1.jpg'),


    ];
  }


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: callModelList.callModelList.length,
        itemBuilder: (context, index){
        return ListTile(
          leading: new CircleAvatar(
            foregroundColor: Colors.grey.shade200,
            backgroundColor: Theme.of(context).primaryColor,
            backgroundImage: NetworkImage(callModelList.callModelList[index].imageUrl),
            
          ),
          
          title: new Text(callModelList.callModelList[index].name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              index % 2 == 0 ? new Icon(Icons.call_missed, color: Colors.red,): new Icon(Icons.call_made, color: Colors.green,),
              new Text(callModelList.callModelList[index].timeOfCall,
                  style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic))
            ]
            ,
          ),
          trailing: Icon(Icons.video_call),
          onTap: () {
            print('Tapped${index}');
          },
          
        );
        }

    );
  }
}
