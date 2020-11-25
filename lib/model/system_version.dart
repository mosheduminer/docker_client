part of docker_client.api;

class SystemVersion {
  
  SystemVersionPlatform platform = null;
  /* Information about system components  */
  List<SystemVersionComponents> components = [];
  /* The version of the daemon */
  String version = null;
  /* The default (and highest) API version that is supported by the daemon  */
  String apiVersion = null;
  /* The minimum API version that is supported by the daemon  */
  String minAPIVersion = null;
  /* The Git commit of the source code that was used to build the daemon  */
  String gitCommit = null;
  /* The version Go used to compile the daemon, and the version of the Go runtime in use.  */
  String goVersion = null;
  /* The operating system that the daemon is running on (\"linux\" or \"windows\")  */
  String os = null;
  /* The architecture that the daemon is running on  */
  String arch = null;
  /* The kernel version (`uname -r`) that the daemon is running on.  This field is omitted when empty.  */
  String kernelVersion = null;
  /* Indicates if the daemon is started with experimental features enabled.  This field is omitted when empty / false.  */
  bool experimental = null;
  /* The date and time that the daemon was compiled.  */
  String buildTime = null;
  SystemVersion();

  @override
  String toString() {
    return 'SystemVersion[platform=$platform, components=$components, version=$version, apiVersion=$apiVersion, minAPIVersion=$minAPIVersion, gitCommit=$gitCommit, goVersion=$goVersion, os=$os, arch=$arch, kernelVersion=$kernelVersion, experimental=$experimental, buildTime=$buildTime, ]';
  }

  SystemVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    platform = (json['Platform'] == null) ?
      null :
      SystemVersionPlatform.fromJson(json['Platform']);
    components = (json['Components'] == null) ?
      null :
      SystemVersionComponents.listFromJson(json['Components']);
    version = json['Version'];
    apiVersion = json['ApiVersion'];
    minAPIVersion = json['MinAPIVersion'];
    gitCommit = json['GitCommit'];
    goVersion = json['GoVersion'];
    os = json['Os'];
    arch = json['Arch'];
    kernelVersion = json['KernelVersion'];
    experimental = json['Experimental'];
    buildTime = json['BuildTime'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (platform != null)
      json['Platform'] = platform;
    if (components != null)
      json['Components'] = components;
    if (version != null)
      json['Version'] = version;
    if (apiVersion != null)
      json['ApiVersion'] = apiVersion;
    if (minAPIVersion != null)
      json['MinAPIVersion'] = minAPIVersion;
    if (gitCommit != null)
      json['GitCommit'] = gitCommit;
    if (goVersion != null)
      json['GoVersion'] = goVersion;
    if (os != null)
      json['Os'] = os;
    if (arch != null)
      json['Arch'] = arch;
    if (kernelVersion != null)
      json['KernelVersion'] = kernelVersion;
    if (experimental != null)
      json['Experimental'] = experimental;
    if (buildTime != null)
      json['BuildTime'] = buildTime;
    return json;
  }

  static List<SystemVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemVersion>() : json.map((value) => SystemVersion.fromJson(value)).toList();
  }

  static Map<String, SystemVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemVersion.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemVersion-objects as value to a dart map
  static Map<String, List<SystemVersion>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemVersion>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemVersion.listFromJson(value);
       });
     }
     return map;
  }
}

