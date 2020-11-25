part of docker_client.api;

class Secret {
  
  String ID = null;
  
  ObjectVersion version = null;
  
  String createdAt = null;
  
  String updatedAt = null;
  
  SecretSpec spec = null;
  Secret();

  @override
  String toString() {
    return 'Secret[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, ]';
  }

  Secret.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    version = (json['Version'] == null) ?
      null :
      ObjectVersion.fromJson(json['Version']);
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    spec = (json['Spec'] == null) ?
      null :
      SecretSpec.fromJson(json['Spec']);
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
    return json;
  }

  static List<Secret> listFromJson(List<dynamic> json) {
    return json == null ? List<Secret>() : json.map((value) => Secret.fromJson(value)).toList();
  }

  static Map<String, Secret> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Secret>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Secret.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Secret-objects as value to a dart map
  static Map<String, List<Secret>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Secret>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Secret.listFromJson(value);
       });
     }
     return map;
  }
}

