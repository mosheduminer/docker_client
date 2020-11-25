part of docker_client.api;

class IPAM {
  /* Name of the IPAM driver to use. */
  String driver = "default";
  /* List of IPAM configuration options, specified as a map:  ``` {\"Subnet\": <CIDR>, \"IPRange\": <CIDR>, \"Gateway\": <IP address>, \"AuxAddress\": <device_name:IP address>} ```  */
  List<Map<String, String>> config = [];
  /* Driver-specific options, specified as a map. */
  Map<String, String> options = {};
  IPAM();

  @override
  String toString() {
    return 'IPAM[driver=$driver, config=$config, options=$options, ]';
  }

  IPAM.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    driver = json['Driver'];
    config = (json['Config'] == null)
        ? null
        : (json['Config'] as List)
            .map((e) =>
                (e as Map).map((k, v) => MapEntry(k as String, v as String)))
            .toList();
    options = (json['Options'] == null)
        ? null
        : (json['Options'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (driver != null) json['Driver'] = driver;
    if (config != null) json['Config'] = config;
    if (options != null) json['Options'] = options;
    return json;
  }

  static List<IPAM> listFromJson(List<dynamic> json) {
    return json == null
        ? List<IPAM>()
        : json.map((value) => IPAM.fromJson(value)).toList();
  }

  static Map<String, IPAM> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IPAM>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = IPAM.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IPAM-objects as value to a dart map
  static Map<String, List<IPAM>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<IPAM>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = IPAM.listFromJson(value);
      });
    }
    return map;
  }
}
