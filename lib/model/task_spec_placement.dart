part of docker_client.api;

class TaskSpecPlacement {
  /* An array of constraint expressions to limit the set of nodes where a task can be scheduled. Constraint expressions can either use a _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find nodes that satisfy every expression (AND match). Constraints can match node or Docker Engine labels as follows:  node attribute       | matches                        | example ---------------------|--------------------------------|----------------------------------------------- `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4` `node.hostname`      | Node hostname                  | `node.hostname!=node-2` `node.role`          | Node role (`manager`/`worker`) | `node.role==manager` `node.platform.os`   | Node operating system          | `node.platform.os==windows` `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64` `node.labels`        | User-defined node labels       | `node.labels.security==high` `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`  `engine.labels` apply to Docker Engine labels like operating system, drivers, etc. Swarm administrators add `node.labels` for operational purposes by using the [`node update endpoint`](#operation/NodeUpdate).  */
  List<String> constraints = [];
  /* Preferences provide a way to make the scheduler aware of factors such as topology. They are provided in order from highest to lowest precedence.  */
  List<TaskSpecPlacementPreferences> preferences = [];
  /* Maximum number of replicas for per node (default value is 0, which is unlimited)  */
  int maxReplicas = 0;
  /* Platforms stores all the platforms that the service's image can run on. This field is used in the platform filter for scheduling. If empty, then the platform filter is off, meaning there are no scheduling restrictions.  */
  List<Platform> platforms = [];
  TaskSpecPlacement();

  @override
  String toString() {
    return 'TaskSpecPlacement[constraints=$constraints, preferences=$preferences, maxReplicas=$maxReplicas, platforms=$platforms, ]';
  }

  TaskSpecPlacement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    constraints = (json['Constraints'] == null) ?
      null :
      (json['Constraints'] as List).cast<String>();
    preferences = (json['Preferences'] == null) ?
      null :
      TaskSpecPlacementPreferences.listFromJson(json['Preferences']);
    maxReplicas = json['MaxReplicas'];
    platforms = (json['Platforms'] == null) ?
      null :
      Platform.listFromJson(json['Platforms']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (constraints != null)
      json['Constraints'] = constraints;
    if (preferences != null)
      json['Preferences'] = preferences;
    if (maxReplicas != null)
      json['MaxReplicas'] = maxReplicas;
    if (platforms != null)
      json['Platforms'] = platforms;
    return json;
  }

  static List<TaskSpecPlacement> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecPlacement>() : json.map((value) => TaskSpecPlacement.fromJson(value)).toList();
  }

  static Map<String, TaskSpecPlacement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecPlacement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecPlacement.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPlacement-objects as value to a dart map
  static Map<String, List<TaskSpecPlacement>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecPlacement>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecPlacement.listFromJson(value);
       });
     }
     return map;
  }
}

