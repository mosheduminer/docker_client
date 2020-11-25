part of docker_client.api;

class ServiceUpdateStatus {
  
  String state = null;
  //enum stateEnum {  updating,  paused,  completed,  };{
  
  String startedAt = null;
  
  String completedAt = null;
  
  String message = null;
  ServiceUpdateStatus();

  @override
  String toString() {
    return 'ServiceUpdateStatus[state=$state, startedAt=$startedAt, completedAt=$completedAt, message=$message, ]';
  }

  ServiceUpdateStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['State'];
    startedAt = json['StartedAt'];
    completedAt = json['CompletedAt'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (state != null)
      json['State'] = state;
    if (startedAt != null)
      json['StartedAt'] = startedAt;
    if (completedAt != null)
      json['CompletedAt'] = completedAt;
    if (message != null)
      json['Message'] = message;
    return json;
  }

  static List<ServiceUpdateStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceUpdateStatus>() : json.map((value) => ServiceUpdateStatus.fromJson(value)).toList();
  }

  static Map<String, ServiceUpdateStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceUpdateStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceUpdateStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceUpdateStatus-objects as value to a dart map
  static Map<String, List<ServiceUpdateStatus>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceUpdateStatus>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceUpdateStatus.listFromJson(value);
       });
     }
     return map;
  }
}

