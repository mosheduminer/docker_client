part of docker_client.api;

class ProgressDetail {
  
  int current = null;
  
  int total = null;
  ProgressDetail();

  @override
  String toString() {
    return 'ProgressDetail[current=$current, total=$total, ]';
  }

  ProgressDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    current = json['current'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (current != null)
      json['current'] = current;
    if (total != null)
      json['total'] = total;
    return json;
  }

  static List<ProgressDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<ProgressDetail>() : json.map((value) => ProgressDetail.fromJson(value)).toList();
  }

  static Map<String, ProgressDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProgressDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProgressDetail.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProgressDetail-objects as value to a dart map
  static Map<String, List<ProgressDetail>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProgressDetail>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProgressDetail.listFromJson(value);
       });
     }
     return map;
  }
}

