part of docker_client.api;

class SystemVersionComponents {
  /* Name of the component  */
  String name = null;
  /* Version of the component  */
  String version = null;
  /* Key/value pairs of strings with additional information about the component. These values are intended for informational purposes only, and their content is not defined, and not part of the API specification.  These messages can be printed by the client as information to the user.  */
  Object details = null;
  SystemVersionComponents();

  @override
  String toString() {
    return 'SystemVersionComponents[name=$name, version=$version, details=$details, ]';
  }

  SystemVersionComponents.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    version = json['Version'];
    details = json['Details'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (version != null)
      json['Version'] = version;
      json['Details'] = details;
    return json;
  }

  static List<SystemVersionComponents> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemVersionComponents>() : json.map((value) => SystemVersionComponents.fromJson(value)).toList();
  }

  static Map<String, SystemVersionComponents> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemVersionComponents>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemVersionComponents.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemVersionComponents-objects as value to a dart map
  static Map<String, List<SystemVersionComponents>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemVersionComponents>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemVersionComponents.listFromJson(value);
       });
     }
     return map;
  }
}

