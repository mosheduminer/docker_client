part of docker_client.api;

class PluginConfigInterface {
  
  List<PluginInterfaceType> types = [];
  
  String socket = null;
  /* Protocol to use for clients connecting to the plugin. */
  String protocolScheme = null;
  //enum protocolSchemeEnum {  ,  moby.plugins.http/v1,  };{
  PluginConfigInterface();

  @override
  String toString() {
    return 'PluginConfigInterface[types=$types, socket=$socket, protocolScheme=$protocolScheme, ]';
  }

  PluginConfigInterface.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    types = (json['Types'] == null) ?
      null :
      PluginInterfaceType.listFromJson(json['Types']);
    socket = json['Socket'];
    protocolScheme = json['ProtocolScheme'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (types != null)
      json['Types'] = types;
    if (socket != null)
      json['Socket'] = socket;
    if (protocolScheme != null)
      json['ProtocolScheme'] = protocolScheme;
    return json;
  }

  static List<PluginConfigInterface> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfigInterface>() : json.map((value) => PluginConfigInterface.fromJson(value)).toList();
  }

  static Map<String, PluginConfigInterface> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfigInterface>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfigInterface.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfigInterface-objects as value to a dart map
  static Map<String, List<PluginConfigInterface>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfigInterface>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfigInterface.listFromJson(value);
       });
     }
     return map;
  }
}

