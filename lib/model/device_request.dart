part of docker_client.api;

class DeviceRequest {
  
  String driver = null;
  
  int count = null;
  
  List<String> deviceIDs = [];
  /* A list of capabilities; an OR list of AND lists of capabilities.  */
  List<List<String>> capabilities = [];
  /* Driver-specific options, specified as a key/value pairs. These options are passed directly to the driver.  */
  Map<String, String> options = {};
  DeviceRequest();

  @override
  String toString() {
    return 'DeviceRequest[driver=$driver, count=$count, deviceIDs=$deviceIDs, capabilities=$capabilities, options=$options, ]';
  }

  DeviceRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    driver = json['Driver'];
    count = json['Count'];
    deviceIDs = (json['DeviceIDs'] == null) ?
      null :
      (json['DeviceIDs'] as List).cast<String>();
    capabilities = (json['Capabilities'] == null) ?
      null :
      (json['Capabilities'] as List).map((e) => (e as List).map((e) => e as String).toList()).toList();
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (driver != null)
      json['Driver'] = driver;
    if (count != null)
      json['Count'] = count;
    if (deviceIDs != null)
      json['DeviceIDs'] = deviceIDs;
    if (capabilities != null)
      json['Capabilities'] = capabilities;
    if (options != null)
      json['Options'] = options;
    return json;
  }

  static List<DeviceRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<DeviceRequest>() : json.map((value) => DeviceRequest.fromJson(value)).toList();
  }

  static Map<String, DeviceRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeviceRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceRequest-objects as value to a dart map
  static Map<String, List<DeviceRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DeviceRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DeviceRequest.listFromJson(value);
       });
     }
     return map;
  }
}

