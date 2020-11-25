part of docker_client.api;

class ThrottleDevice {
  /* Device path */
  String path = null;
  /* Rate */
  int rate = null;
  ThrottleDevice();

  @override
  String toString() {
    return 'ThrottleDevice[path=$path, rate=$rate, ]';
  }

  ThrottleDevice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['Path'];
    rate = json['Rate'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['Path'] = path;
    if (rate != null)
      json['Rate'] = rate;
    return json;
  }

  static List<ThrottleDevice> listFromJson(List<dynamic> json) {
    return json == null ? List<ThrottleDevice>() : json.map((value) => ThrottleDevice.fromJson(value)).toList();
  }

  static Map<String, ThrottleDevice> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ThrottleDevice>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ThrottleDevice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ThrottleDevice-objects as value to a dart map
  static Map<String, List<ThrottleDevice>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ThrottleDevice>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ThrottleDevice.listFromJson(value);
       });
     }
     return map;
  }
}

