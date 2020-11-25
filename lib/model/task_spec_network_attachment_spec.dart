part of docker_client.api;

class TaskSpecNetworkAttachmentSpec {
  /* ID of the container represented by this task */
  String containerID = null;
  TaskSpecNetworkAttachmentSpec();

  @override
  String toString() {
    return 'TaskSpecNetworkAttachmentSpec[containerID=$containerID, ]';
  }

  TaskSpecNetworkAttachmentSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    containerID = json['ContainerID'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (containerID != null)
      json['ContainerID'] = containerID;
    return json;
  }

  static List<TaskSpecNetworkAttachmentSpec> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecNetworkAttachmentSpec>() : json.map((value) => TaskSpecNetworkAttachmentSpec.fromJson(value)).toList();
  }

  static Map<String, TaskSpecNetworkAttachmentSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecNetworkAttachmentSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecNetworkAttachmentSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecNetworkAttachmentSpec-objects as value to a dart map
  static Map<String, List<TaskSpecNetworkAttachmentSpec>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecNetworkAttachmentSpec>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecNetworkAttachmentSpec.listFromJson(value);
       });
     }
     return map;
  }
}

