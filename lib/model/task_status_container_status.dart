part of docker_client.api;

class TaskStatusContainerStatus {
  
  String containerID = null;
  
  int PID = null;
  
  int exitCode = null;
  TaskStatusContainerStatus();

  @override
  String toString() {
    return 'TaskStatusContainerStatus[containerID=$containerID, PID=$PID, exitCode=$exitCode, ]';
  }

  TaskStatusContainerStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    containerID = json['ContainerID'];
    PID = json['PID'];
    exitCode = json['ExitCode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (containerID != null)
      json['ContainerID'] = containerID;
    if (PID != null)
      json['PID'] = PID;
    if (exitCode != null)
      json['ExitCode'] = exitCode;
    return json;
  }

  static List<TaskStatusContainerStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskStatusContainerStatus>() : json.map((value) => TaskStatusContainerStatus.fromJson(value)).toList();
  }

  static Map<String, TaskStatusContainerStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskStatusContainerStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskStatusContainerStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskStatusContainerStatus-objects as value to a dart map
  static Map<String, List<TaskStatusContainerStatus>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskStatusContainerStatus>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskStatusContainerStatus.listFromJson(value);
       });
     }
     return map;
  }
}

