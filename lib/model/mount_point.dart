part of docker_client.api;

class MountPoint {
  
  String type = null;
  
  String name = null;
  
  String source_ = null;
  
  String destination = null;
  
  String driver = null;
  
  String mode = null;
  
  bool RW = null;
  
  String propagation = null;
  MountPoint();

  @override
  String toString() {
    return 'MountPoint[type=$type, name=$name, source_=$source_, destination=$destination, driver=$driver, mode=$mode, RW=$RW, propagation=$propagation, ]';
  }

  MountPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['Type'];
    name = json['Name'];
    source_ = json['Source'];
    destination = json['Destination'];
    driver = json['Driver'];
    mode = json['Mode'];
    RW = json['RW'];
    propagation = json['Propagation'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['Type'] = type;
    if (name != null)
      json['Name'] = name;
    if (source_ != null)
      json['Source'] = source_;
    if (destination != null)
      json['Destination'] = destination;
    if (driver != null)
      json['Driver'] = driver;
    if (mode != null)
      json['Mode'] = mode;
    if (RW != null)
      json['RW'] = RW;
    if (propagation != null)
      json['Propagation'] = propagation;
    return json;
  }

  static List<MountPoint> listFromJson(List<dynamic> json) {
    return json == null ? List<MountPoint>() : json.map((value) => MountPoint.fromJson(value)).toList();
  }

  static Map<String, MountPoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MountPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MountPoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MountPoint-objects as value to a dart map
  static Map<String, List<MountPoint>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MountPoint>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MountPoint.listFromJson(value);
       });
     }
     return map;
  }
}

