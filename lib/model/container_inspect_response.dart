part of docker_client.api;

class ContainerInspectResponse {
  /* The ID of the container */
  String id = null;
  /* The time the container was created */
  String created = null;
  /* The path to the command being run */
  String path = null;
  /* The arguments to the command being run */
  List<String> args = [];
  
  ContainerState state = null;
  /* The container's image ID */
  String image = null;
  
  String resolvConfPath = null;
  
  String hostnamePath = null;
  
  String hostsPath = null;
  
  String logPath = null;
  /* TODO */
  Object node = null;
  
  String name = null;
  
  int restartCount = null;
  
  String driver = null;
  
  String platform = null;
  
  String mountLabel = null;
  
  String processLabel = null;
  
  String appArmorProfile = null;
  /* IDs of exec instances that are running in the container. */
  List<String> execIDs = [];
  
  HostConfig hostConfig = null;
  
  GraphDriverData graphDriver = null;
  /* The size of files that have been created or changed by this container.  */
  int sizeRw = null;
  /* The total size of all the files in this container. */
  int sizeRootFs = null;
  
  List<MountPoint> mounts = [];
  
  ContainerConfig config = null;
  
  NetworkSettings networkSettings = null;
  ContainerInspectResponse();

  @override
  String toString() {
    return 'ContainerInspectResponse[id=$id, created=$created, path=$path, args=$args, state=$state, image=$image, resolvConfPath=$resolvConfPath, hostnamePath=$hostnamePath, hostsPath=$hostsPath, logPath=$logPath, node=$node, name=$name, restartCount=$restartCount, driver=$driver, platform=$platform, mountLabel=$mountLabel, processLabel=$processLabel, appArmorProfile=$appArmorProfile, execIDs=$execIDs, hostConfig=$hostConfig, graphDriver=$graphDriver, sizeRw=$sizeRw, sizeRootFs=$sizeRootFs, mounts=$mounts, config=$config, networkSettings=$networkSettings, ]';
  }

  ContainerInspectResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    created = json['Created'];
    path = json['Path'];
    args = (json['Args'] == null) ?
      null :
      (json['Args'] as List).cast<String>();
    state = (json['State'] == null) ?
      null :
      ContainerState.fromJson(json['State']);
    image = json['Image'];
    resolvConfPath = json['ResolvConfPath'];
    hostnamePath = json['HostnamePath'];
    hostsPath = json['HostsPath'];
    logPath = json['LogPath'];
    node = json['Node'];
    name = json['Name'];
    restartCount = json['RestartCount'];
    driver = json['Driver'];
    platform = json['Platform'];
    mountLabel = json['MountLabel'];
    processLabel = json['ProcessLabel'];
    appArmorProfile = json['AppArmorProfile'];
    execIDs = (json['ExecIDs'] == null) ?
      null :
      (json['ExecIDs'] as List).cast<String>();
    hostConfig = (json['HostConfig'] == null) ?
      null :
      HostConfig.fromJson(json['HostConfig']);
    graphDriver = (json['GraphDriver'] == null) ?
      null :
      GraphDriverData.fromJson(json['GraphDriver']);
    sizeRw = json['SizeRw'];
    sizeRootFs = json['SizeRootFs'];
    mounts = (json['Mounts'] == null) ?
      null :
      MountPoint.listFromJson(json['Mounts']);
    config = (json['Config'] == null) ?
      null :
      ContainerConfig.fromJson(json['Config']);
    networkSettings = (json['NetworkSettings'] == null) ?
      null :
      NetworkSettings.fromJson(json['NetworkSettings']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (created != null)
      json['Created'] = created;
    if (path != null)
      json['Path'] = path;
    if (args != null)
      json['Args'] = args;
    if (state != null)
      json['State'] = state;
    if (image != null)
      json['Image'] = image;
    if (resolvConfPath != null)
      json['ResolvConfPath'] = resolvConfPath;
    if (hostnamePath != null)
      json['HostnamePath'] = hostnamePath;
    if (hostsPath != null)
      json['HostsPath'] = hostsPath;
    if (logPath != null)
      json['LogPath'] = logPath;
    if (node != null)
      json['Node'] = node;
    if (name != null)
      json['Name'] = name;
    if (restartCount != null)
      json['RestartCount'] = restartCount;
    if (driver != null)
      json['Driver'] = driver;
    if (platform != null)
      json['Platform'] = platform;
    if (mountLabel != null)
      json['MountLabel'] = mountLabel;
    if (processLabel != null)
      json['ProcessLabel'] = processLabel;
    if (appArmorProfile != null)
      json['AppArmorProfile'] = appArmorProfile;
      json['ExecIDs'] = execIDs;
    if (hostConfig != null)
      json['HostConfig'] = hostConfig;
    if (graphDriver != null)
      json['GraphDriver'] = graphDriver;
    if (sizeRw != null)
      json['SizeRw'] = sizeRw;
    if (sizeRootFs != null)
      json['SizeRootFs'] = sizeRootFs;
    if (mounts != null)
      json['Mounts'] = mounts;
    if (config != null)
      json['Config'] = config;
    if (networkSettings != null)
      json['NetworkSettings'] = networkSettings;
    return json;
  }

  static List<ContainerInspectResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerInspectResponse>() : json.map((value) => ContainerInspectResponse.fromJson(value)).toList();
  }

  static Map<String, ContainerInspectResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerInspectResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerInspectResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerInspectResponse-objects as value to a dart map
  static Map<String, List<ContainerInspectResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerInspectResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerInspectResponse.listFromJson(value);
       });
     }
     return map;
  }
}

