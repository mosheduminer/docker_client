part of docker_client.api;

class PluginMount {
  
  String name = null;
  
  String description = null;
  
  List<String> settable = [];
  
  String source_ = null;
  
  String destination = null;
  
  String type = null;
  
  List<String> options = [];
  PluginMount();

  @override
  String toString() {
    return 'PluginMount[name=$name, description=$description, settable=$settable, source_=$source_, destination=$destination, type=$type, options=$options, ]';
  }

  PluginMount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    description = json['Description'];
    settable = (json['Settable'] == null) ?
      null :
      (json['Settable'] as List).cast<String>();
    source_ = json['Source'];
    destination = json['Destination'];
    type = json['Type'];
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (description != null)
      json['Description'] = description;
    if (settable != null)
      json['Settable'] = settable;
    if (source_ != null)
      json['Source'] = source_;
    if (destination != null)
      json['Destination'] = destination;
    if (type != null)
      json['Type'] = type;
    if (options != null)
      json['Options'] = options;
    return json;
  }

  static List<PluginMount> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginMount>() : json.map((value) => PluginMount.fromJson(value)).toList();
  }

  static Map<String, PluginMount> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginMount>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginMount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginMount-objects as value to a dart map
  static Map<String, List<PluginMount>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginMount>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginMount.listFromJson(value);
       });
     }
     return map;
  }
}

