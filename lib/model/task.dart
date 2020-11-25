part of docker_client.api;

class Task {
  /* The ID of the task. */
  String ID = null;

  ObjectVersion version = null;

  String createdAt = null;

  String updatedAt = null;
  /* Name of the task. */
  String name = null;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};

  TaskSpec spec = null;
  /* The ID of the service this task is part of. */
  String serviceID = null;

  int slot = null;
  /* The ID of the node that this task is on. */
  String nodeID = null;
  /* User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`).  */
  List<Map<String, dynamic>> assignedGenericResources = [];

  TaskStatus status = null;

  TaskState desiredState = null;
  //enum desiredStateEnum {  new,  allocated,  pending,  assigned,  accepted,  preparing,  ready,  starting,  running,  complete,  shutdown,  failed,  rejected,  remove,  orphaned,  };{
  Task();

  @override
  String toString() {
    return 'Task[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, labels=$labels, spec=$spec, serviceID=$serviceID, slot=$slot, nodeID=$nodeID, assignedGenericResources=$assignedGenericResources, status=$status, desiredState=$desiredState, ]';
  }

  Task.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    version = (json['Version'] == null)
        ? null
        : ObjectVersion.fromJson(json['Version']);
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    name = json['Name'];
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
    spec = (json['Spec'] == null) ? null : TaskSpec.fromJson(json['Spec']);
    serviceID = json['ServiceID'];
    slot = json['Slot'];
    nodeID = json['NodeID'];
    assignedGenericResources = (json['AssignedGenericResources'] == null)
        ? null
        : (json['AssignedGenericResources'] as List)
            .map((e) =>
                (e as Map).map((k, v) => MapEntry(k as String, v as dynamic)))
            .toList();
    status =
        (json['Status'] == null) ? null : TaskStatus.fromJson(json['Status']);
    desiredState = (json['DesiredState'] == null)
        ? null
        : TaskState.fromJson(json['DesiredState']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (ID != null) json['ID'] = ID;
    if (version != null) json['Version'] = version;
    if (createdAt != null) json['CreatedAt'] = createdAt;
    if (updatedAt != null) json['UpdatedAt'] = updatedAt;
    if (name != null) json['Name'] = name;
    if (labels != null) json['Labels'] = labels;
    if (spec != null) json['Spec'] = spec;
    if (serviceID != null) json['ServiceID'] = serviceID;
    if (slot != null) json['Slot'] = slot;
    if (nodeID != null) json['NodeID'] = nodeID;
    if (assignedGenericResources != null)
      json['AssignedGenericResources'] = assignedGenericResources;
    if (status != null) json['Status'] = status;
    if (desiredState != null) json['DesiredState'] = desiredState;
    return json;
  }

  static List<Task> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Task>()
        : json.map((value) => Task.fromJson(value)).toList();
  }

  static Map<String, Task> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Task>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Task.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Task-objects as value to a dart map
  static Map<String, List<Task>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Task>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Task.listFromJson(value);
      });
    }
    return map;
  }
}
