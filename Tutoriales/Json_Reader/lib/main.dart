import 'dart:convert';
import 'dart:io';

class Launch {
  String id, details;
  bool success;
  DateTime date;

  Launch.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.details = json['details'];
    this.success = json['succes'];
    this.date = DateTime.fromMillisecondsSinceEpoch(json['date_unix'] * 1000);
  }
}

void main(){
  var file = File("data/spacex_launches.json");
  var text = file.readAsStringSync();
  var json = jsonDecode(text);
  // var launch0 =  Launch.fromJson(json[0]);
  List<Launch> launches = [];
  for (var launchJson in json){
    launches.add(Launch.fromJson(launchJson));
  }
  print(launches[0].id);
}