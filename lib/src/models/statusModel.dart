

class StatusModel {
  String name;
  String imageUrl;
  String minutesAgo;
  StatusModel({this.name, this.imageUrl, this.minutesAgo});

}

class StatusModelList {
  List<StatusModel> list = <StatusModel>[];
}