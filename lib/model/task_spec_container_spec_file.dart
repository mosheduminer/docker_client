part of docker_client.api;

class TaskSpecContainerSpecFile {
  /* Name represents the final filename in the filesystem.  */
  String name = null;
  /* UID represents the file UID. */
  String UID = null;
  /* GID represents the file GID. */
  String GID = null;
  /* Mode represents the FileMode of the file. */
  int mode = null;
  TaskSpecContainerSpecFile();

  @override
  String toString() {
    return 'TaskSpecContainerSpecFile[name=$name, UID=$UID, GID=$GID, mode=$mode, ]';
  }

  TaskSpecContainerSpecFile.fromJson(Map<String, dynamic> json) {
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

  static List<TaskSpecContainerSpecFile> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecFile>() : json.map((value) => TaskSpecContainerSpecFile.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecFile.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecFile-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecFile>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecFile>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecFile.listFromJson(value);
       });
     }
     return map;
  }
}

