part of docker_client.api;

class SwarmSpec {
  /* Name of the swarm. */
  String name = null;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};

  SwarmSpecOrchestration orchestration = null;

  SwarmSpecRaft raft = null;

  SwarmSpecDispatcher dispatcher = null;

  SwarmSpecCAConfig cAConfig = null;

  SwarmSpecEncryptionConfig encryptionConfig = null;

  SwarmSpecTaskDefaults taskDefaults = null;
  SwarmSpec({
    this.name,
    this.labels,
    this.orchestration,
    this.raft,
    this.dispatcher,
    this.cAConfig,
    this.encryptionConfig,
    this.taskDefaults,
  });

  @override
  String toString() {
    return 'SwarmSpec[name=$name, labels=$labels, orchestration=$orchestration, raft=$raft, dispatcher=$dispatcher, cAConfig=$cAConfig, encryptionConfig=$encryptionConfig, taskDefaults=$taskDefaults, ]';
  }

  SwarmSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
    orchestration = (json['Orchestration'] == null)
        ? null
        : SwarmSpecOrchestration.fromJson(json['Orchestration']);
    raft = (json['Raft'] == null) ? null : SwarmSpecRaft.fromJson(json['Raft']);
    dispatcher = (json['Dispatcher'] == null)
        ? null
        : SwarmSpecDispatcher.fromJson(json['Dispatcher']);
    cAConfig = (json['CAConfig'] == null)
        ? null
        : SwarmSpecCAConfig.fromJson(json['CAConfig']);
    encryptionConfig = (json['EncryptionConfig'] == null)
        ? null
        : SwarmSpecEncryptionConfig.fromJson(json['EncryptionConfig']);
    taskDefaults = (json['TaskDefaults'] == null)
        ? null
        : SwarmSpecTaskDefaults.fromJson(json['TaskDefaults']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null) json['Name'] = name;
    if (labels != null) json['Labels'] = labels;
    json['Orchestration'] = orchestration;
    if (raft != null) json['Raft'] = raft;
    json['Dispatcher'] = dispatcher;
    json['CAConfig'] = cAConfig;
    if (encryptionConfig != null) json['EncryptionConfig'] = encryptionConfig;
    if (taskDefaults != null) json['TaskDefaults'] = taskDefaults;
    return json;
  }

  static List<SwarmSpec> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SwarmSpec>()
        : json.map((value) => SwarmSpec.fromJson(value)).toList();
  }

  static Map<String, SwarmSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = SwarmSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpec-objects as value to a dart map
  static Map<String, List<SwarmSpec>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpec>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = SwarmSpec.listFromJson(value);
      });
    }
    return map;
  }
}
