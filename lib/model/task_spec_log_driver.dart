part of docker_client.api;

class TaskSpecLogDriver {
  
  String name = null;
  
  Map<String, String> options = {};
  TaskSpecLogDriver();

  @override
  String toString() {
    return 'TaskSpecLogDriver[name=$name, options=$options, ]';
  }

  TaskSpecLogDriver.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (options != null)
      json['Options'] = options;
    return json;
  }

  static List<TaskSpecLogDriver> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecLogDriver>() : json.map((value) => TaskSpecLogDriver.fromJson(value)).toList();
  }

  static Map<String, TaskSpecLogDriver> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecLogDriver>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecLogDriver.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecLogDriver-objects as value to a dart map
  static Map<String, List<TaskSpecLogDriver>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecLogDriver>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecLogDriver.listFromJson(value);
       });
     }
     return map;
  }
}

