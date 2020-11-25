part of docker_client.api;

class Config {
  
  String ID = null;
  
  ObjectVersion version = null;
  
  String createdAt = null;
  
  String updatedAt = null;
  
  ConfigSpec spec = null;
  Config();

  @override
  String toString() {
    return 'Config[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, ]';
  }

  Config.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    version = (json['Version'] == null) ?
      null :
      ObjectVersion.fromJson(json['Version']);
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    spec = (json['Spec'] == null) ?
      null :
      ConfigSpec.fromJson(json['Spec']);
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

  static List<Config> listFromJson(List<dynamic> json) {
    return json == null ? List<Config>() : json.map((value) => Config.fromJson(value)).toList();
  }

  static Map<String, Config> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Config>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Config.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Config-objects as value to a dart map
  static Map<String, List<Config>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Config>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Config.listFromJson(value);
       });
     }
     return map;
  }
}

