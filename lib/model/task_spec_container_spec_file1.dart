part of docker_client.api;

class TaskSpecContainerSpecFile1 {
  /* Name represents the final filename in the filesystem.  */
  String name = null;
  /* UID represents the file UID. */
  String UID = null;
  /* GID represents the file GID. */
  String GID = null;
  /* Mode represents the FileMode of the file. */
  int mode = null;
  TaskSpecContainerSpecFile1();

  @override
  String toString() {
    return 'TaskSpecContainerSpecFile1[name=$name, UID=$UID, GID=$GID, mode=$mode, ]';
  }

  TaskSpecContainerSpecFile1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    UID = json['UID'];
    GID = json['GID'];
    mode = json['Mode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (UID != null)
      json['UID'] = UID;
    if (GID != null)
      json['GID'] = GID;
    if (mode != null)
      json['Mode'] = mode;
    return json;
  }

  static List<TaskSpecContainerSpecFile1> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecFile1>() : json.map((value) => TaskSpecContainerSpecFile1.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecFile1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecFile1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecFile1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecFile1-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecFile1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecFile1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecFile1.listFromJson(value);
       });
     }
     return map;
  }
}

