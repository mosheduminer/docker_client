part of docker_client.api;

class TaskSpecContainerSpecConfigs {
  
  TaskSpecContainerSpecFile1 file = null;
  /* Runtime represents a target that is not mounted into the container but is used by the task  <p><br /><p>  > **Note**: `Configs.File` and `Configs.Runtime` are mutually > exclusive  */
  Object runtime = null;
  /* ConfigID represents the ID of the specific config that we're referencing.  */
  String configID = null;
  /* ConfigName is the name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID.  */
  String configName = null;
  TaskSpecContainerSpecConfigs();

  @override
  String toString() {
    return 'TaskSpecContainerSpecConfigs[file=$file, runtime=$runtime, configID=$configID, configName=$configName, ]';
  }

  TaskSpecContainerSpecConfigs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = (json['File'] == null) ?
      null :
      TaskSpecContainerSpecFile1.fromJson(json['File']);
    runtime = json['Runtime'];
    configID = json['ConfigID'];
    configName = json['ConfigName'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (file != null)
      json['File'] = file;
    if (runtime != null)
      json['Runtime'] = runtime;
    if (configID != null)
      json['ConfigID'] = configID;
    if (configName != null)
      json['ConfigName'] = configName;
    return json;
  }

  static List<TaskSpecContainerSpecConfigs> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecConfigs>() : json.map((value) => TaskSpecContainerSpecConfigs.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecConfigs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecConfigs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecConfigs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecConfigs-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecConfigs>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecConfigs>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecConfigs.listFromJson(value);
       });
     }
     return map;
  }
}

