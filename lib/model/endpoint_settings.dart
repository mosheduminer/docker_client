part of docker_client.api;

class EndpointSettings {
  
  EndpointIPAMConfig iPAMConfig = null;
  
  List<String> links = [];
  
  List<String> aliases = [];
  /* Unique ID of the network.  */
  String networkID = null;
  /* Unique ID for the service endpoint in a Sandbox.  */
  String endpointID = null;
  /* Gateway address for this network.  */
  String gateway = null;
  /* IPv4 address.  */
  String iPAddress = null;
  /* Mask length of the IPv4 address.  */
  int iPPrefixLen = null;
  /* IPv6 gateway address.  */
  String iPv6Gateway = null;
  /* Global IPv6 address.  */
  String globalIPv6Address = null;
  /* Mask length of the global IPv6 address.  */
  int globalIPv6PrefixLen = null;
  /* MAC address for the endpoint on this network.  */
  String macAddress = null;
  /* DriverOpts is a mapping of driver options and values. These options are passed directly to the driver and are driver specific.  */
  Map<String, String> driverOpts = {};
  EndpointSettings();

  @override
  String toString() {
    return 'EndpointSettings[iPAMConfig=$iPAMConfig, links=$links, aliases=$aliases, networkID=$networkID, endpointID=$endpointID, gateway=$gateway, iPAddress=$iPAddress, iPPrefixLen=$iPPrefixLen, iPv6Gateway=$iPv6Gateway, globalIPv6Address=$globalIPv6Address, globalIPv6PrefixLen=$globalIPv6PrefixLen, macAddress=$macAddress, driverOpts=$driverOpts, ]';
  }

  EndpointSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    iPAMConfig = (json['IPAMConfig'] == null) ?
      null :
      EndpointIPAMConfig.fromJson(json['IPAMConfig']);
    links = (json['Links'] == null) ?
      null :
      (json['Links'] as List).cast<String>();
    aliases = (json['Aliases'] == null) ?
      null :
      (json['Aliases'] as List).cast<String>();
    networkID = json['NetworkID'];
    endpointID = json['EndpointID'];
    gateway = json['Gateway'];
    iPAddress = json['IPAddress'];
    iPPrefixLen = json['IPPrefixLen'];
    iPv6Gateway = json['IPv6Gateway'];
    globalIPv6Address = json['GlobalIPv6Address'];
    globalIPv6PrefixLen = json['GlobalIPv6PrefixLen'];
    macAddress = json['MacAddress'];
    driverOpts = (json['DriverOpts'] == null) ?
      null :
      (json['DriverOpts'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['IPAMConfig'] = iPAMConfig;
    if (links != null)
      json['Links'] = links;
    if (aliases != null)
      json['Aliases'] = aliases;
    if (networkID != null)
      json['NetworkID'] = networkID;
    if (endpointID != null)
      json['EndpointID'] = endpointID;
    if (gateway != null)
      json['Gateway'] = gateway;
    if (iPAddress != null)
      json['IPAddress'] = iPAddress;
    if (iPPrefixLen != null)
      json['IPPrefixLen'] = iPPrefixLen;
    if (iPv6Gateway != null)
      json['IPv6Gateway'] = iPv6Gateway;
    if (globalIPv6Address != null)
      json['GlobalIPv6Address'] = globalIPv6Address;
    if (globalIPv6PrefixLen != null)
      json['GlobalIPv6PrefixLen'] = globalIPv6PrefixLen;
    if (macAddress != null)
      json['MacAddress'] = macAddress;
      json['DriverOpts'] = driverOpts;
    return json;
  }

  static List<EndpointSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<EndpointSettings>() : json.map((value) => EndpointSettings.fromJson(value)).toList();
  }

  static Map<String, EndpointSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EndpointSettings.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EndpointSettings-objects as value to a dart map
  static Map<String, List<EndpointSettings>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EndpointSettings>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EndpointSettings.listFromJson(value);
       });
     }
     return map;
  }
}

