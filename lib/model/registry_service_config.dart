part of docker_client.api;

class RegistryServiceConfig {
  /* List of IP ranges to which nondistributable artifacts can be pushed, using the CIDR syntax [RFC 4632](https://tools.ietf.org/html/4632).  Some images (for example, Windows base images) contain artifacts whose distribution is restricted by license. When these images are pushed to a registry, restricted artifacts are not included.  This configuration override this behavior, and enables the daemon to push nondistributable artifacts to all registries whose resolved IP address is within the subnet described by the CIDR syntax.  This option is useful when pushing images containing nondistributable artifacts to a registry on an air-gapped network so hosts on that network can pull the images without connecting to another server.  > **Warning**: Nondistributable artifacts typically have restrictions > on how and where they can be distributed and shared. Only use this > feature to push artifacts to private registries and ensure that you > are in compliance with any terms that cover redistributing > nondistributable artifacts.  */
  List<String> allowNondistributableArtifactsCIDRs = [];
  /* List of registry hostnames to which nondistributable artifacts can be pushed, using the format `<hostname>[:<port>]` or `<IP address>[:<port>]`.  Some images (for example, Windows base images) contain artifacts whose distribution is restricted by license. When these images are pushed to a registry, restricted artifacts are not included.  This configuration override this behavior for the specified registries.  This option is useful when pushing images containing nondistributable artifacts to a registry on an air-gapped network so hosts on that network can pull the images without connecting to another server.  > **Warning**: Nondistributable artifacts typically have restrictions > on how and where they can be distributed and shared. Only use this > feature to push artifacts to private registries and ensure that you > are in compliance with any terms that cover redistributing > nondistributable artifacts.  */
  List<String> allowNondistributableArtifactsHostnames = [];
  /* List of IP ranges of insecure registries, using the CIDR syntax ([RFC 4632](https://tools.ietf.org/html/4632)). Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  By default, local registries (`127.0.0.0/8`) are configured as insecure. All other registries are secure. Communicating with an insecure registry is not possible if the daemon assumes that registry is secure.  This configuration override this behavior, insecure communication with registries whose resolved IP address is within the subnet described by the CIDR syntax.  Registries can also be marked insecure by hostname. Those registries are listed under `IndexConfigs` and have their `Secure` field set to `false`.  > **Warning**: Using this option can be useful when running a local > registry, but introduces security vulnerabilities. This option > should therefore ONLY be used for testing purposes. For increased > security, users should add their CA to their system's list of trusted > CAs instead of enabling this option.  */
  List<String> insecureRegistryCIDRs = [];
  
  Map<String, IndexInfo> indexConfigs = {};
  /* List of registry URLs that act as a mirror for the official (`docker.io`) registry.  */
  List<String> mirrors = [];
  RegistryServiceConfig();

  @override
  String toString() {
    return 'RegistryServiceConfig[allowNondistributableArtifactsCIDRs=$allowNondistributableArtifactsCIDRs, allowNondistributableArtifactsHostnames=$allowNondistributableArtifactsHostnames, insecureRegistryCIDRs=$insecureRegistryCIDRs, indexConfigs=$indexConfigs, mirrors=$mirrors, ]';
  }

  RegistryServiceConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    allowNondistributableArtifactsCIDRs = (json['AllowNondistributableArtifactsCIDRs'] == null) ?
      null :
      (json['AllowNondistributableArtifactsCIDRs'] as List).cast<String>();
    allowNondistributableArtifactsHostnames = (json['AllowNondistributableArtifactsHostnames'] == null) ?
      null :
      (json['AllowNondistributableArtifactsHostnames'] as List).cast<String>();
    insecureRegistryCIDRs = (json['InsecureRegistryCIDRs'] == null) ?
      null :
      (json['InsecureRegistryCIDRs'] as List).cast<String>();
    indexConfigs = (json['IndexConfigs'] == null) ?
      null :
      IndexInfo.mapFromJson(json['IndexConfigs']);
    mirrors = (json['Mirrors'] == null) ?
      null :
      (json['Mirrors'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowNondistributableArtifactsCIDRs != null)
      json['AllowNondistributableArtifactsCIDRs'] = allowNondistributableArtifactsCIDRs;
    if (allowNondistributableArtifactsHostnames != null)
      json['AllowNondistributableArtifactsHostnames'] = allowNondistributableArtifactsHostnames;
    if (insecureRegistryCIDRs != null)
      json['InsecureRegistryCIDRs'] = insecureRegistryCIDRs;
    if (indexConfigs != null)
      json['IndexConfigs'] = indexConfigs;
    if (mirrors != null)
      json['Mirrors'] = mirrors;
    return json;
  }

  static List<RegistryServiceConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<RegistryServiceConfig>() : json.map((value) => RegistryServiceConfig.fromJson(value)).toList();
  }

  static Map<String, RegistryServiceConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegistryServiceConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RegistryServiceConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegistryServiceConfig-objects as value to a dart map
  static Map<String, List<RegistryServiceConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RegistryServiceConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RegistryServiceConfig.listFromJson(value);
       });
     }
     return map;
  }
}

