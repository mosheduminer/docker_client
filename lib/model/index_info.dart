part of docker_client.api;

class IndexInfo {
  /* Name of the registry, such as \"docker.io\".  */
  String name = null;
  /* List of mirrors, expressed as URIs.  */
  List<String> mirrors = [];
  /* Indicates if the registry is part of the list of insecure registries.  If `false`, the registry is insecure. Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  > **Warning**: Insecure registries can be useful when running a local > registry. However, because its use creates security vulnerabilities > it should ONLY be enabled for testing purposes. For increased > security, users should add their CA to their system's list of > trusted CAs instead of enabling this option.  */
  bool secure = null;
  /* Indicates whether this is an official registry (i.e., Docker Hub / docker.io)  */
  bool official = null;
  IndexInfo();

  @override
  String toString() {
    return 'IndexInfo[name=$name, mirrors=$mirrors, secure=$secure, official=$official, ]';
  }

  IndexInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    mirrors = (json['Mirrors'] == null) ?
      null :
      (json['Mirrors'] as List).cast<String>();
    secure = json['Secure'];
    official = json['Official'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (mirrors != null)
      json['Mirrors'] = mirrors;
    if (secure != null)
      json['Secure'] = secure;
    if (official != null)
      json['Official'] = official;
    return json;
  }

  static List<IndexInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<IndexInfo>() : json.map((value) => IndexInfo.fromJson(value)).toList();
  }

  static Map<String, IndexInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IndexInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IndexInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IndexInfo-objects as value to a dart map
  static Map<String, List<IndexInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<IndexInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = IndexInfo.listFromJson(value);
       });
     }
     return map;
  }
}

