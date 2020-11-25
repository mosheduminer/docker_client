part of docker_client.api;

class HistoryResponseItem {
  
  String id = null;
  
  int created = null;
  
  String createdBy = null;
  
  List<String> tags = [];
  
  int size = null;
  
  String comment = null;
  HistoryResponseItem();

  @override
  String toString() {
    return 'HistoryResponseItem[id=$id, created=$created, createdBy=$createdBy, tags=$tags, size=$size, comment=$comment, ]';
  }

  HistoryResponseItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    created = json['Created'];
    createdBy = json['CreatedBy'];
    tags = (json['Tags'] == null) ?
      null :
      (json['Tags'] as List).cast<String>();
    size = json['Size'];
    comment = json['Comment'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (created != null)
      json['Created'] = created;
    if (createdBy != null)
      json['CreatedBy'] = createdBy;
    if (tags != null)
      json['Tags'] = tags;
    if (size != null)
      json['Size'] = size;
    if (comment != null)
      json['Comment'] = comment;
    return json;
  }

  static List<HistoryResponseItem> listFromJson(List<dynamic> json) {
    return json == null ? List<HistoryResponseItem>() : json.map((value) => HistoryResponseItem.fromJson(value)).toList();
  }

  static Map<String, HistoryResponseItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HistoryResponseItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HistoryResponseItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HistoryResponseItem-objects as value to a dart map
  static Map<String, List<HistoryResponseItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HistoryResponseItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HistoryResponseItem.listFromJson(value);
       });
     }
     return map;
  }
}

