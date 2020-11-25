part of docker_client.api;

class TaskSpecContainerSpecSecrets {
  
  TaskSpecContainerSpecFile file = null;
  /* SecretID represents the ID of the specific secret that we're referencing.  */
  String secretID = null;
  /* SecretName is the name of the secret that this references, but this is just provided for lookup/display purposes. The secret in the reference will be identified by its ID.  */
  String secretName = null;
  TaskSpecContainerSpecSecrets();

  @override
  String toString() {
    return 'TaskSpecContainerSpecSecrets[file=$file, secretID=$secretID, secretName=$secretName, ]';
  }

  TaskSpecContainerSpecSecrets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = (json['File'] == null) ?
      null :
      TaskSpecContainerSpecFile.fromJson(json['File']);
    secretID = json['SecretID'];
    secretName = json['SecretName'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (file != null)
      json['File'] = file;
    if (secretID != null)
      json['SecretID'] = secretID;
    if (secretName != null)
      json['SecretName'] = secretName;
    return json;
  }

  static List<TaskSpecContainerSpecSecrets> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecSecrets>() : json.map((value) => TaskSpecContainerSpecSecrets.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecSecrets> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecSecrets>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecSecrets.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecSecrets-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecSecrets>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecSecrets>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecSecrets.listFromJson(value);
       });
     }
     return map;
  }
}

