part of docker_client.api;

class PluginConfig {
  /* Docker Version used to create the plugin */
  String dockerVersion = null;
  
  String description = null;
  
  String documentation = null;
  
  PluginConfigInterface interface_ = null;
  
  List<String> entrypoint = [];
  
  String workDir = null;
  
  PluginConfigUser user = null;
  
  PluginConfigNetwork network = null;
  
  PluginConfigLinux linux = null;
  
  String propagatedMount = null;
  
  bool ipcHost = null;
  
  bool pidHost = null;
  
  List<PluginMount> mounts = [];
  
  List<PluginEnv> env = [];
  
  PluginConfigArgs args = null;
  
  PluginConfigRootfs rootfs = null;
  PluginConfig();

  @override
  String toString() {
    return 'PluginConfig[dockerVersion=$dockerVersion, description=$description, documentation=$documentation, interface_=$interface_, entrypoint=$entrypoint, workDir=$workDir, user=$user, network=$network, linux=$linux, propagatedMount=$propagatedMount, ipcHost=$ipcHost, pidHost=$pidHost, mounts=$mounts, env=$env, args=$args, rootfs=$rootfs, ]';
  }

  PluginConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dockerVersion = json['DockerVersion'];
    description = json['Description'];
    documentation = json['Documentation'];
    interface_ = (json['Interface'] == null) ?
      null :
      PluginConfigInterface.fromJson(json['Interface']);
    entrypoint = (json['Entrypoint'] == null) ?
      null :
      (json['Entrypoint'] as List).cast<String>();
    workDir = json['WorkDir'];
    user = (json['User'] == null) ?
      null :
      PluginConfigUser.fromJson(json['User']);
    network = (json['Network'] == null) ?
      null :
      PluginConfigNetwork.fromJson(json['Network']);
    linux = (json['Linux'] == null) ?
      null :
      PluginConfigLinux.fromJson(json['Linux']);
    propagatedMount = json['PropagatedMount'];
    ipcHost = json['IpcHost'];
    pidHost = json['PidHost'];
    mounts = (json['Mounts'] == null) ?
      null :
      PluginMount.listFromJson(json['Mounts']);
    env = (json['Env'] == null) ?
      null :
      PluginEnv.listFromJson(json['Env']);
    args = (json['Args'] == null) ?
      null :
      PluginConfigArgs.fromJson(json['Args']);
    rootfs = (json['rootfs'] == null) ?
      null :
      PluginConfigRootfs.fromJson(json['rootfs']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dockerVersion != null)
      json['DockerVersion'] = dockerVersion;
    if (description != null)
      json['Description'] = description;
    if (documentation != null)
      json['Documentation'] = documentation;
    if (interface_ != null)
      json['Interface'] = interface_;
    if (entrypoint != null)
      json['Entrypoint'] = entrypoint;
    if (workDir != null)
      json['WorkDir'] = workDir;
    if (user != null)
      json['User'] = user;
    if (network != null)
      json['Network'] = network;
    if (linux != null)
      json['Linux'] = linux;
    if (propagatedMount != null)
      json['PropagatedMount'] = propagatedMount;
    if (ipcHost != null)
      json['IpcHost'] = ipcHost;
    if (pidHost != null)
      json['PidHost'] = pidHost;
    if (mounts != null)
      json['Mounts'] = mounts;
    if (env != null)
      json['Env'] = env;
    if (args != null)
      json['Args'] = args;
    if (rootfs != null)
      json['rootfs'] = rootfs;
    return json;
  }

  static List<PluginConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfig>() : json.map((value) => PluginConfig.fromJson(value)).toList();
  }

  static Map<String, PluginConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfig-objects as value to a dart map
  static Map<String, List<PluginConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfig.listFromJson(value);
       });
     }
     return map;
  }
}

