part of docker_client.api;

class Service {
  
  String ID = null;
  
  ObjectVersion version = null;
  
  String createdAt = null;
  
  String updatedAt = null;
  
  ServiceSpec spec = null;
  
  ServiceEndpoint endpoint = null;
  
  ServiceUpdateStatus updateStatus = null;
  Service();

  @override
  String toString() {
    return 'Service[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, endpoint=$endpoint, updateStatus=$updateStatus, ]';
  }

  Service.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    version = (json['Version'] == null) ?
      null :
      ObjectVersion.fromJson(json['Version']);
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    spec = (json['Spec'] == null) ?
      null :
      ServiceSpec.fromJson(json['Spec']);
    endpoint = (json['Endpoint'] == null) ?
      null :
      ServiceEndpoint.fromJson(json['Endpoint']);
    updateStatus = (json['UpdateStatus'] == null) ?
      null :
      ServiceUpdateStatus.fromJson(json['UpdateStatus']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    if (version != null)
      json['Version'] = version;
    if (createdAt != null)
      json['CreatedAt'] = createdAt;
    if (updatedAt != null)
      json['UpdatedAt'] = updatedAt;
    if (spec != null)
      json['Spec'] = spec;
    if (endpoint != null)
      json['Endpoint'] = endpoint;
    if (updateStatus != null)
      json['UpdateStatus'] = updateStatus;
    return json;
  }

  static List<Service> listFromJson(List<dynamic> json) {
    return json == null ? List<Service>() : json.map((value) => Service.fromJson(value)).toList();
  }

  static Map<String, Service> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Service>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Service.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Service>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Service.listFromJson(value);
       });
     }
     return map;
  }
}

