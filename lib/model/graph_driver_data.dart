part of docker_client.api;

class GraphDriverData {
  
  String name = null;
  
  Map<String, String> data = {};
  GraphDriverData();

  @override
  String toString() {
    return 'GraphDriverData[name=$name, data=$data, ]';
  }

  GraphDriverData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    data = (json['Data'] == null) ?
      null :
      (json['Data'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (data != null)
      json['Data'] = data;
    return json;
  }

  static List<GraphDriverData> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphDriverData>() : json.map((value) => GraphDriverData.fromJson(value)).toList();
  }

  static Map<String, GraphDriverData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphDriverData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphDriverData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GraphDriverData-objects as value to a dart map
  static Map<String, List<GraphDriverData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GraphDriverData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GraphDriverData.listFromJson(value);
       });
     }
     return map;
  }
}

