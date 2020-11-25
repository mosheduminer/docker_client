part of docker_client.api;

class ServiceSpec {
  /* Name of the service. */
  String name = null;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};

  TaskSpec taskTemplate = null;

  ServiceSpecMode mode = null;

  ServiceSpecUpdateConfig updateConfig = null;

  ServiceSpecRollbackConfig rollbackConfig = null;
  /* Specifies which networks the service should attach to. */
  List<NetworkAttachmentConfig> networks = [];

  EndpointSpec endpointSpec = null;
  ServiceSpec({
    this.name,
    this.labels,
    this.taskTemplate,
    this.mode,
    this.updateConfig,
    this.rollbackConfig,
    this.networks,
    this.endpointSpec,
  });

  @override
  String toString() {
    return 'ServiceSpec[name=$name, labels=$labels, taskTemplate=$taskTemplate, mode=$mode, updateConfig=$updateConfig, rollbackConfig=$rollbackConfig, networks=$networks, endpointSpec=$endpointSpec, ]';
  }

  ServiceSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
    taskTemplate = (json['TaskTemplate'] == null)
        ? null
        : TaskSpec.fromJson(json['TaskTemplate']);
    mode =
        (json['Mode'] == null) ? null : ServiceSpecMode.fromJson(json['Mode']);
    updateConfig = (json['UpdateConfig'] == null)
        ? null
        : ServiceSpecUpdateConfig.fromJson(json['UpdateConfig']);
    rollbackConfig = (json['RollbackConfig'] == null)
        ? null
        : ServiceSpecRollbackConfig.fromJson(json['RollbackConfig']);
    networks = (json['Networks'] == null)
        ? null
        : NetworkAttachmentConfig.listFromJson(json['Networks']);
    endpointSpec = (json['EndpointSpec'] == null)
        ? null
        : EndpointSpec.fromJson(json['EndpointSpec']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null) json['Name'] = name;
    if (labels != null) json['Labels'] = labels;
    if (taskTemplate != null) json['TaskTemplate'] = taskTemplate;
    if (mode != null) json['Mode'] = mode;
    if (updateConfig != null) json['UpdateConfig'] = updateConfig;
    if (rollbackConfig != null) json['RollbackConfig'] = rollbackConfig;
    if (networks != null) json['Networks'] = networks;
    if (endpointSpec != null) json['EndpointSpec'] = endpointSpec;
    return json;
  }

  static List<ServiceSpec> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServiceSpec>()
        : json.map((value) => ServiceSpec.fromJson(value)).toList();
  }

  static Map<String, ServiceSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceSpec-objects as value to a dart map
  static Map<String, List<ServiceSpec>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ServiceSpec>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ServiceSpec.listFromJson(value);
      });
    }
    return map;
  }
}
