part of docker_client.api;

class TaskSpecContainerSpecPrivilegesCredentialSpec {
  /* Load credential spec from a Swarm Config with the given ID. The specified config must also be present in the Configs field with the Runtime property set.  <p><br /></p>   > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive.  */
  String config = null;
  /* Load credential spec from this file. The file is read by the daemon, and must be present in the `CredentialSpecs` subdirectory in the docker data directory, which defaults to `C:\\ProgramData\\Docker\\` on Windows.  For example, specifying `spec.json` loads `C:\\ProgramData\\Docker\\CredentialSpecs\\spec.json`.  <p><br /></p>  > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive.  */
  String file = null;
  /* Load credential spec from this value in the Windows registry. The specified registry value must be located in:  `HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Virtualization\\Containers\\CredentialSpecs`  <p><br /></p>   > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive.  */
  String registry = null;
  TaskSpecContainerSpecPrivilegesCredentialSpec();

  @override
  String toString() {
    return 'TaskSpecContainerSpecPrivilegesCredentialSpec[config=$config, file=$file, registry=$registry, ]';
  }

  TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    config = json['Config'];
    file = json['File'];
    registry = json['Registry'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (config != null)
      json['Config'] = config;
    if (file != null)
      json['File'] = file;
    if (registry != null)
      json['Registry'] = registry;
    return json;
  }

  static List<TaskSpecContainerSpecPrivilegesCredentialSpec> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecPrivilegesCredentialSpec>() : json.map((value) => TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecPrivilegesCredentialSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecPrivilegesCredentialSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecPrivilegesCredentialSpec-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecPrivilegesCredentialSpec>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecPrivilegesCredentialSpec>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecPrivilegesCredentialSpec.listFromJson(value);
       });
     }
     return map;
  }
}

