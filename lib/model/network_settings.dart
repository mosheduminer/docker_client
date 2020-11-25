part of docker_client.api;

class NetworkSettings {
  /* Name of the network'a bridge (for example, `docker0`). */
  String bridge = null;
  /* SandboxID uniquely represents a container's network stack. */
  String sandboxID = null;
  /* Indicates if hairpin NAT should be enabled on the virtual interface.  */
  bool hairpinMode = null;
  /* IPv6 unicast address using the link-local prefix. */
  String linkLocalIPv6Address = null;
  /* Prefix length of the IPv6 unicast address. */
  int linkLocalIPv6PrefixLen = null;
  /* PortMap describes the mapping of container ports to host ports, using the container's port-number and protocol as key in the format `<port>/<protocol>`, for example, `80/udp`.  If a container's port is mapped for multiple protocols, separate entries are added to the mapping table.  */
  Map<String, List<PortBinding>> ports = {};
  /* SandboxKey identifies the sandbox */
  String sandboxKey = null;
  /*  */
  List<Address> secondaryIPAddresses = [];
  /*  */
  List<Address> secondaryIPv6Addresses = [];
  /* EndpointID uniquely represents a service endpoint in a Sandbox.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  String endpointID = null;
  /* Gateway address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  String gateway = null;
  /* Global IPv6 address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  String globalIPv6Address = null;
  /* Mask length of the global IPv6 address.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  int globalIPv6PrefixLen = null;
  /* IPv4 address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  String iPAddress = null;
  /* Mask length of the IPv4 address.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  int iPPrefixLen = null;
  /* IPv6 gateway address for this network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  String iPv6Gateway = null;
  /* MAC address for the container on the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0  */
  String macAddress = null;
  /* Information about all networks that the container is connected to.  */
  Map<String, EndpointSettings> networks = {};
  NetworkSettings();

  @override
  String toString() {
    return 'NetworkSettings[bridge=$bridge, sandboxID=$sandboxID, hairpinMode=$hairpinMode, linkLocalIPv6Address=$linkLocalIPv6Address, linkLocalIPv6PrefixLen=$linkLocalIPv6PrefixLen, ports=$ports, sandboxKey=$sandboxKey, secondaryIPAddresses=$secondaryIPAddresses, secondaryIPv6Addresses=$secondaryIPv6Addresses, endpointID=$endpointID, gateway=$gateway, globalIPv6Address=$globalIPv6Address, globalIPv6PrefixLen=$globalIPv6PrefixLen, iPAddress=$iPAddress, iPPrefixLen=$iPPrefixLen, iPv6Gateway=$iPv6Gateway, macAddress=$macAddress, networks=$networks, ]';
  }

  NetworkSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bridge = json['Bridge'];
    sandboxID = json['SandboxID'];
    hairpinMode = json['HairpinMode'];
    linkLocalIPv6Address = json['LinkLocalIPv6Address'];
    linkLocalIPv6PrefixLen = json['LinkLocalIPv6PrefixLen'];
    ports = (json['Ports'] == null) ?
      null :
      PortBinding.mapListFromJson(json['Ports']);
    sandboxKey = json['SandboxKey'];
    secondaryIPAddresses = (json['SecondaryIPAddresses'] == null) ?
      null :
      Address.listFromJson(json['SecondaryIPAddresses']);
    secondaryIPv6Addresses = (json['SecondaryIPv6Addresses'] == null) ?
      null :
      Address.listFromJson(json['SecondaryIPv6Addresses']);
    endpointID = json['EndpointID'];
    gateway = json['Gateway'];
    globalIPv6Address = json['GlobalIPv6Address'];
    globalIPv6PrefixLen = json['GlobalIPv6PrefixLen'];
    iPAddress = json['IPAddress'];
    iPPrefixLen = json['IPPrefixLen'];
    iPv6Gateway = json['IPv6Gateway'];
    macAddress = json['MacAddress'];
    networks = (json['Networks'] == null) ?
      null :
      EndpointSettings.mapFromJson(json['Networks']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (bridge != null)
      json['Bridge'] = bridge;
    if (sandboxID != null)
      json['SandboxID'] = sandboxID;
    if (hairpinMode != null)
      json['HairpinMode'] = hairpinMode;
    if (linkLocalIPv6Address != null)
      json['LinkLocalIPv6Address'] = linkLocalIPv6Address;
    if (linkLocalIPv6PrefixLen != null)
      json['LinkLocalIPv6PrefixLen'] = linkLocalIPv6PrefixLen;
    if (ports != null)
      json['Ports'] = ports;
    if (sandboxKey != null)
      json['SandboxKey'] = sandboxKey;
      json['SecondaryIPAddresses'] = secondaryIPAddresses;
      json['SecondaryIPv6Addresses'] = secondaryIPv6Addresses;
    if (endpointID != null)
      json['EndpointID'] = endpointID;
    if (gateway != null)
      json['Gateway'] = gateway;
    if (globalIPv6Address != null)
      json['GlobalIPv6Address'] = globalIPv6Address;
    if (globalIPv6PrefixLen != null)
      json['GlobalIPv6PrefixLen'] = globalIPv6PrefixLen;
    if (iPAddress != null)
      json['IPAddress'] = iPAddress;
    if (iPPrefixLen != null)
      json['IPPrefixLen'] = iPPrefixLen;
    if (iPv6Gateway != null)
      json['IPv6Gateway'] = iPv6Gateway;
    if (macAddress != null)
      json['MacAddress'] = macAddress;
    if (networks != null)
      json['Networks'] = networks;
    return json;
  }

  static List<NetworkSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<NetworkSettings>() : json.map((value) => NetworkSettings.fromJson(value)).toList();
  }

  static Map<String, NetworkSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NetworkSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NetworkSettings.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkSettings-objects as value to a dart map
  static Map<String, List<NetworkSettings>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NetworkSettings>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NetworkSettings.listFromJson(value);
       });
     }
     return map;
  }
}

