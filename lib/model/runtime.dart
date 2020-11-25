part of docker_client.api;

class Runtime {
  /* Name and, optional, path, of the OCI executable binary.  If the path is omitted, the daemon searches the host's `$PATH` for the binary and uses the first result.  */
  String path = null;
  /* List of command-line arguments to pass to the runtime when invoked.  */
  List<String> runtimeArgs = [];
  Runtime();

  @override
  String toString() {
    return 'Runtime[path=$path, runtimeArgs=$runtimeArgs, ]';
  }

  Runtime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    runtimeArgs = (json['runtimeArgs'] == null) ?
      null :
      (json['runtimeArgs'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['path'] = path;
      json['runtimeArgs'] = runtimeArgs;
    return json;
  }

  static List<Runtime> listFromJson(List<dynamic> json) {
    return json == null ? List<Runtime>() : json.map((value) => Runtime.fromJson(value)).toList();
  }

  static Map<String, Runtime> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Runtime>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Runtime.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Runtime-objects as value to a dart map
  static Map<String, List<Runtime>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Runtime>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Runtime.listFromJson(value);
       });
     }
     return map;
  }
}

