part of docker_client.api;

class TaskSpecContainerSpecPrivilegesSELinuxContext {
  /* Disable SELinux */
  bool disable = null;
  /* SELinux user label */
  String user = null;
  /* SELinux role label */
  String role = null;
  /* SELinux type label */
  String type = null;
  /* SELinux level label */
  String level = null;
  TaskSpecContainerSpecPrivilegesSELinuxContext();

  @override
  String toString() {
    return 'TaskSpecContainerSpecPrivilegesSELinuxContext[disable=$disable, user=$user, role=$role, type=$type, level=$level, ]';
  }

  TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    disable = json['Disable'];
    user = json['User'];
    role = json['Role'];
    type = json['Type'];
    level = json['Level'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (disable != null)
      json['Disable'] = disable;
    if (user != null)
      json['User'] = user;
    if (role != null)
      json['Role'] = role;
    if (type != null)
      json['Type'] = type;
    if (level != null)
      json['Level'] = level;
    return json;
  }

  static List<TaskSpecContainerSpecPrivilegesSELinuxContext> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecPrivilegesSELinuxContext>() : json.map((value) => TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecPrivilegesSELinuxContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecPrivilegesSELinuxContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivilegesSELinuxContext-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivilegesSELinuxContext>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecPrivilegesSELinuxContext>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecPrivilegesSELinuxContext.listFromJson(value);
       });
     }
     return map;
  }
}

