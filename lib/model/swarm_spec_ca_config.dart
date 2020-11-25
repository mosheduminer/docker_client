part of docker_client.api;

class SwarmSpecCAConfig {
  /* The duration node certificates are issued for. */
  int nodeCertExpiry = null;
  /* Configuration for forwarding signing requests to an external certificate authority.  */
  List<SwarmSpecCAConfigExternalCAs> externalCAs = [];
  /* The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format.  */
  String signingCACert = null;
  /* The desired signing CA key for all swarm node TLS leaf certificates, in PEM format.  */
  String signingCAKey = null;
  /* An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified in `SigningCACert` and `SigningCAKey`  */
  int forceRotate = null;
  SwarmSpecCAConfig();

  @override
  String toString() {
    return 'SwarmSpecCAConfig[nodeCertExpiry=$nodeCertExpiry, externalCAs=$externalCAs, signingCACert=$signingCACert, signingCAKey=$signingCAKey, forceRotate=$forceRotate, ]';
  }

  SwarmSpecCAConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodeCertExpiry = json['NodeCertExpiry'];
    externalCAs = (json['ExternalCAs'] == null) ?
      null :
      SwarmSpecCAConfigExternalCAs.listFromJson(json['ExternalCAs']);
    signingCACert = json['SigningCACert'];
    signingCAKey = json['SigningCAKey'];
    forceRotate = json['ForceRotate'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nodeCertExpiry != null)
      json['NodeCertExpiry'] = nodeCertExpiry;
    if (externalCAs != null)
      json['ExternalCAs'] = externalCAs;
    if (signingCACert != null)
      json['SigningCACert'] = signingCACert;
    if (signingCAKey != null)
      json['SigningCAKey'] = signingCAKey;
    if (forceRotate != null)
      json['ForceRotate'] = forceRotate;
    return json;
  }

  static List<SwarmSpecCAConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecCAConfig>() : json.map((value) => SwarmSpecCAConfig.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecCAConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecCAConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecCAConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecCAConfig-objects as value to a dart map
  static Map<String, List<SwarmSpecCAConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecCAConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecCAConfig.listFromJson(value);
       });
     }
     return map;
  }
}

