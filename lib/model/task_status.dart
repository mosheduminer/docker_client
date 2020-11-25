part of docker_client.api;

class TaskStatus {
  
  String timestamp = null;
  
  TaskState state = null;
  //enum stateEnum {  new,  allocated,  pending,  assigned,  accepted,  preparing,  ready,  starting,  running,  complete,  shutdown,  failed,  rejected,  remove,  orphaned,  };{
  
  String message = null;
  
  String err = null;
  
  TaskStatusContainerStatus containerStatus = null;
  TaskStatus();

  @override
  String toString() {
    return 'TaskStatus[timestamp=$timestamp, state=$state, message=$message, err=$err, containerStatus=$containerStatus, ]';
  }

  TaskStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timestamp = json['Timestamp'];
    state = (json['State'] == null) ?
      null :
      TaskState.fromJson(json['State']);
    message = json['Message'];
    err = json['Err'];
    containerStatus = (json['ContainerStatus'] == null) ?
      null :
      TaskStatusContainerStatus.fromJson(json['ContainerStatus']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (timestamp != null)
      json['Timestamp'] = timestamp;
    if (state != null)
      json['State'] = state;
    if (message != null)
      json['Message'] = message;
    if (err != null)
      json['Err'] = err;
    if (containerStatus != null)
      json['ContainerStatus'] = containerStatus;
    return json;
  }

  static List<TaskStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskStatus>() : json.map((value) => TaskStatus.fromJson(value)).toList();
  }

  static Map<String, TaskStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskStatus-objects as value to a dart map
  static Map<String, List<TaskStatus>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskStatus>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskStatus.listFromJson(value);
       });
     }
     return map;
  }
}

