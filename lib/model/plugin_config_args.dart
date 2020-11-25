part of docker_client.api;

class PluginConfigArgs {
  
  String name = null;
  
  String description = null;
  
  List<String> settable = [];
  
  List<String> value = [];
  PluginConfigArgs();

  @override
  String toString() {
    return 'PluginConfigArgs[name=$name, description=$description, settable=$settable, value=$value, ]';
  }

  PluginConfigArgs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    description = json['Description'];
    settable = (json['Settable'] == null) ?
      null :
      (json['Settable'] as List).cast<String>();
    value = (json['Value'] == null) ?
      null :
      (json['Value'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (description != null)
      json['Description'] = description;
    if (settable != null)
      json['Settable'] = settable;
    if (value != null)
      json['Value'] = value;
    return json;
  }

  static List<PluginConfigArgs> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfigArgs>() : json.map((value) => PluginConfigArgs.fromJson(value)).toList();
  }

  static Map<String, PluginConfigArgs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfigArgs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfigArgs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfigArgs-objects as value to a dart map
  static Map<String, List<PluginConfigArgs>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfigArgs>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfigArgs.listFromJson(value);
       });
     }
     return map;
  }
}

