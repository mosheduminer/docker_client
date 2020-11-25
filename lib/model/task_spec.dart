part of docker_client.api;

class TaskSpec {
  TaskSpecPluginSpec pluginSpec = null;

  TaskSpecContainerSpec containerSpec = null;

  TaskSpecNetworkAttachmentSpec networkAttachmentSpec = null;

  TaskSpecResources resources = null;

  TaskSpecRestartPolicy restartPolicy = null;

  TaskSpecPlacement placement = null;
  /* A counter that triggers an update even if no relevant parameters have been changed.  */
  int forceUpdate = null;
  /* Runtime is the type of runtime specified for the task executor.  */
  String runtime = null;
  /* Specifies which networks the service should attach to. */
  List<NetworkAttachmentConfig> networks = [];

  TaskSpecLogDriver logDriver = null;
  TaskSpec({
    this.pluginSpec,
    this.containerSpec,
    this.networkAttachmentSpec,
    this.resources,
    this.restartPolicy,
    this.placement,
    this.forceUpdate,
    this.runtime,
    this.networks,
  });

  @override
  String toString() {
    return 'TaskSpec[pluginSpec=$pluginSpec, containerSpec=$containerSpec, networkAttachmentSpec=$networkAttachmentSpec, resources=$resources, restartPolicy=$restartPolicy, placement=$placement, forceUpdate=$forceUpdate, runtime=$runtime, networks=$networks, logDriver=$logDriver, ]';
  }

  TaskSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pluginSpec = (json['PluginSpec'] == null)
        ? null
        : TaskSpecPluginSpec.fromJson(json['PluginSpec']);
    containerSpec = (json['ContainerSpec'] == null)
        ? null
        : TaskSpecContainerSpec.fromJson(json['ContainerSpec']);
    networkAttachmentSpec = (json['NetworkAttachmentSpec'] == null)
        ? null
        : TaskSpecNetworkAttachmentSpec.fromJson(json['NetworkAttachmentSpec']);
    resources = (json['Resources'] == null)
        ? null
        : TaskSpecResources.fromJson(json['Resources']);
    restartPolicy = (json['RestartPolicy'] == null)
        ? null
        : TaskSpecRestartPolicy.fromJson(json['RestartPolicy']);
    placement = (json['Placement'] == null)
        ? null
        : TaskSpecPlacement.fromJson(json['Placement']);
    forceUpdate = json['ForceUpdate'];
    runtime = json['Runtime'];
    networks = (json['Networks'] == null)
        ? null
        : NetworkAttachmentConfig.listFromJson(json['Networks']);
    logDriver = (json['LogDriver'] == null)
        ? null
        : TaskSpecLogDriver.fromJson(json['LogDriver']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (pluginSpec != null) json['PluginSpec'] = pluginSpec;
    if (containerSpec != null) json['ContainerSpec'] = containerSpec;
    if (networkAttachmentSpec != null)
      json['NetworkAttachmentSpec'] = networkAttachmentSpec;
    if (resources != null) json['Resources'] = resources;
    if (restartPolicy != null) json['RestartPolicy'] = restartPolicy;
    if (placement != null) json['Placement'] = placement;
    if (forceUpdate != null) json['ForceUpdate'] = forceUpdate;
    if (runtime != null) json['Runtime'] = runtime;
    if (networks != null) json['Networks'] = networks;
    if (logDriver != null) json['LogDriver'] = logDriver;
    return json;
  }

  static List<TaskSpec> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TaskSpec>()
        : json.map((value) => TaskSpec.fromJson(value)).toList();
  }

  static Map<String, TaskSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = TaskSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpec-objects as value to a dart map
  static Map<String, List<TaskSpec>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpec>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TaskSpec.listFromJson(value);
      });
    }
    return map;
  }
}
