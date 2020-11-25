part of docker_client.api;

class TaskSpecContainerSpecPrivileges {
  
  TaskSpecContainerSpecPrivilegesCredentialSpec credentialSpec = null;
  
  TaskSpecContainerSpecPrivilegesSELinuxContext sELinuxContext = null;
  TaskSpecContainerSpecPrivileges();

  @override
  String toString() {
    return 'TaskSpecContainerSpecPrivileges[credentialSpec=$credentialSpec, sELinuxContext=$sELinuxContext, ]';
  }

  TaskSpecContainerSpecPrivileges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    credentialSpec = (json['CredentialSpec'] == null) ?
      null :
      TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(json['CredentialSpec']);
    sELinuxContext = (json['SELinuxContext'] == null) ?
      null :
      TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(json['SELinuxContext']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (credentialSpec != null)
      json['CredentialSpec'] = credentialSpec;
    if (sELinuxContext != null)
      json['SELinuxContext'] = sELinuxContext;
    return json;
  }

  static List<TaskSpecContainerSpecPrivileges> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecPrivileges>() : json.map((value) => TaskSpecContainerSpecPrivileges.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecPrivileges> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecPrivileges>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecPrivileges.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivileges-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivileges>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecPrivileges>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecPrivileges.listFromJson(value);
       });
     }
     return map;
  }
}

