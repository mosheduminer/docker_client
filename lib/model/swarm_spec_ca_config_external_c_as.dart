part of docker_client.api;

class SwarmSpecCAConfigExternalCAs {
  /* Protocol for communication with the external CA (currently only `cfssl` is supported).  */
  String protocol = "cfssl";
  //enum protocolEnum {  cfssl,  };{
  /* URL where certificate signing requests should be sent.  */
  String URL = null;
  /* An object with key/value pairs that are interpreted as protocol-specific options for the external CA driver.  */
  Map<String, String> options = {};
  /* The root CA certificate (in PEM format) this external CA uses to issue TLS certificates (assumed to be to the current swarm root CA certificate if not provided).  */
  String cACert = null;
  SwarmSpecCAConfigExternalCAs();

  @override
  String toString() {
    return 'SwarmSpecCAConfigExternalCAs[protocol=$protocol, URL=$URL, options=$options, cACert=$cACert, ]';
  }

  SwarmSpecCAConfigExternalCAs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    protocol = json['Protocol'];
    URL = json['URL'];
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as Map).cast<String, String>();
    cACert = json['CACert'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (protocol != null)
      json['Protocol'] = protocol;
    if (URL != null)
      json['URL'] = URL;
    if (options != null)
      json['Options'] = options;
    if (cACert != null)
      json['CACert'] = cACert;
    return json;
  }

  static List<SwarmSpecCAConfigExternalCAs> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecCAConfigExternalCAs>() : json.map((value) => SwarmSpecCAConfigExternalCAs.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecCAConfigExternalCAs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecCAConfigExternalCAs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecCAConfigExternalCAs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecCAConfigExternalCAs-objects as value to a dart map
  static Map<String, List<SwarmSpecCAConfigExternalCAs>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecCAConfigExternalCAs>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecCAConfigExternalCAs.listFromJson(value);
       });
     }
     return map;
  }
}

