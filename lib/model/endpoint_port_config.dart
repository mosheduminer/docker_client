part of docker_client.api;

class EndpointPortConfig {
  
  String name = null;
  
  String protocol = null;
  //enum protocolEnum {  tcp,  udp,  sctp,  };{
  /* The port inside the container. */
  int targetPort = null;
  /* The port on the swarm hosts. */
  int publishedPort = null;
  /* The mode in which port is published.  <p><br /></p>  - \"ingress\" makes the target port accessible on every node,   regardless of whether there is a task for the service running on   that node or not. - \"host\" bypasses the routing mesh and publish the port directly on   the swarm node where that service is running.  */
  String publishMode = "ingress";
  //enum publishModeEnum {  ingress,  host,  };{
  EndpointPortConfig();

  @override
  String toString() {
    return 'EndpointPortConfig[name=$name, protocol=$protocol, targetPort=$targetPort, publishedPort=$publishedPort, publishMode=$publishMode, ]';
  }

  EndpointPortConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    protocol = json['Protocol'];
    targetPort = json['TargetPort'];
    publishedPort = json['PublishedPort'];
    publishMode = json['PublishMode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (protocol != null)
      json['Protocol'] = protocol;
    if (targetPort != null)
      json['TargetPort'] = targetPort;
    if (publishedPort != null)
      json['PublishedPort'] = publishedPort;
    if (publishMode != null)
      json['PublishMode'] = publishMode;
    return json;
  }

  static List<EndpointPortConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<EndpointPortConfig>() : json.map((value) => EndpointPortConfig.fromJson(value)).toList();
  }

  static Map<String, EndpointPortConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointPortConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EndpointPortConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EndpointPortConfig-objects as value to a dart map
  static Map<String, List<EndpointPortConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EndpointPortConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EndpointPortConfig.listFromJson(value);
       });
     }
     return map;
  }
}

