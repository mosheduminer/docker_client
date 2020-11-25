part of docker_client.api;

class ContainerChangeResponseItem {
  /* Path to file that has changed */
  String path = null;
  /* Kind of change */
  int kind = null;
  ContainerChangeResponseItem();

  @override
  String toString() {
    return 'ContainerChangeResponseItem[path=$path, kind=$kind, ]';
  }

  ContainerChangeResponseItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['Path'];
    kind = json['Kind'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['Path'] = path;
    if (kind != null)
      json['Kind'] = kind;
    return json;
  }

  static List<ContainerChangeResponseItem> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerChangeResponseItem>() : json.map((value) => ContainerChangeResponseItem.fromJson(value)).toList();
  }

  static Map<String, ContainerChangeResponseItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerChangeResponseItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerChangeResponseItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerChangeResponseItem-objects as value to a dart map
  static Map<String, List<ContainerChangeResponseItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerChangeResponseItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerChangeResponseItem.listFromJson(value);
       });
     }
     return map;
  }
}

