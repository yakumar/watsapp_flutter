import 'package:flutter/material.dart';
import '../models/statusModel.dart';

class Status extends StatefulWidget {
  @override
  StatusState createState() {
    return new StatusState();
  }
}

class StatusState extends State<Status> {
  StatusModel statusModel = new StatusModel(minutesAgo: '15 minutes ago',
      name: 'You ra',
      imageUrl: 'https://png.pngtree.com/element_pic/16/11/21/348e458f49b1159bcfd04655031245fb.jpg');
  StatusModelList statusModelList = new StatusModelList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    statusModelList.list = [
      StatusModel(name: 'Hira hi hi hih ih ihih i',
          imageUrl: 'https://banner2.kisspng.com/20180206/vrq/kisspng-labrador-retriever-golden-retriever-boston-terrier-puppy-5a7a7be221de20.2421634515179765461387.jpg',
          minutesAgo: '50 minutes ago'),
      StatusModel(name: 'Pora a',
          imageUrl: 'https://banner2.kisspng.com/20180206/vrq/kisspng-labrador-retriever-golden-retriever-boston-terrier-puppy-5a7a7be221de20.2421634515179765461387.jpg',
          minutesAgo: '40 minutes ago'),
      StatusModel(name: 'New ra',
          imageUrl: 'https://banner2.kisspng.com/20180206/vrq/kisspng-labrador-retriever-golden-retriever-boston-terrier-puppy-5a7a7be221de20.2421634515179765461387.jpg',
          minutesAgo: '20 minutes ago'),
      StatusModel(name: 'Nuv ra',
          imageUrl: 'https://banner2.kisspng.com/20180206/vrq/kisspng-labrador-retriever-golden-retriever-boston-terrier-puppy-5a7a7be221de20.2421634515179765461387.jpg',
          minutesAgo: '10 minutes ago'),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        new ListTile(title: Text(
          statusModel.name, style: TextStyle(fontWeight: FontWeight.bold,),),
          leading: new CircleAvatar(
            foregroundColor: Colors.grey.shade200,
            backgroundColor: Theme.of(context).primaryColor,
            backgroundImage: NetworkImage(statusModel.imageUrl),
          ),
          subtitle: new Text(statusModel.minutesAgo, style: TextStyle(fontStyle: FontStyle.italic),),
        ),
        
        new Container(
          color: Colors.grey.shade200,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Contact Messages', style: TextStyle(color: Theme.of(context).primaryColor),),
        ),

        new ListView.builder(
          shrinkWrap: true,
            itemCount: statusModelList.list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  statusModelList.list[index].name, style: TextStyle(fontWeight: FontWeight.bold,),),
                leading: new CircleAvatar(
                  foregroundColor: Colors.grey.shade200,
                  backgroundColor: Theme.of(context).primaryColor,
                  backgroundImage: NetworkImage(statusModelList.list[index].imageUrl),
                ),
                subtitle: new Text(statusModelList.list[index].minutesAgo, style: TextStyle(fontStyle: FontStyle.italic),),



              );
            }
        ),

      ],
    );
  }
}
