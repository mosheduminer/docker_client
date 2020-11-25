part of docker_client.api;

class ResourceObject {
  int nanoCPUs = null;

  int memoryBytes = null;
  /* User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`).  */
  List<Map<String, dynamic>> genericResources = [];
  ResourceObject();

  @override
  String toString() {
    return 'ResourceObject[nanoCPUs=$nanoCPUs, memoryBytes=$memoryBytes, genericResources=$genericResources, ]';
  }

  ResourceObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nanoCPUs = json['NanoCPUs'];
    memoryBytes = json['MemoryBytes'];
    genericResources = (json['GenericResources'] == null)
        ? null
        : (json['GenericResources'] as List)
            .map((e) =>
                (e as Map).map((k, v) => MapEntry(k as String, v as dynamic)))
            .toList();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (nanoCPUs != null) json['NanoCPUs'] = nanoCPUs;
    if (memoryBytes != null) json['MemoryBytes'] = memoryBytes;
    if (genericResources != null) json['GenericResources'] = genericResources;
    return json;
  }

  static List<ResourceObject> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ResourceObject>()
        : json.map((value) => ResourceObject.fromJson(value)).toList();
  }

  static Map<String, ResourceObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ResourceObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceObject-objects as value to a dart map
  static Map<String, List<ResourceObject>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ResourceObject>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ResourceObject.listFromJson(value);
      });
    }
    return map;
  }
}
