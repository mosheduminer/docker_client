part of docker_client.api;

class TaskSpecContainerSpec {
  /* The image name to use for the container */
  String image = null;
  /* User-defined key/value data. */
  Map<String, String> labels = {};
  /* The command to be run in the image. */
  List<String> command = [];
  /* Arguments to the command. */
  List<String> args = [];
  /* The hostname to use for the container, as a valid [RFC 1123](https://tools.ietf.org/html/rfc1123) hostname.  */
  String hostname = null;
  /* A list of environment variables in the form `VAR=value`.  */
  List<String> env = [];
  /* The working directory for commands to run in. */
  String dir = null;
  /* The user inside the container. */
  String user = null;
  /* A list of additional groups that the container process will run as.  */
  List<String> groups = [];
  
  TaskSpecContainerSpecPrivileges privileges = null;
  /* Whether a pseudo-TTY should be allocated. */
  bool TTY = null;
  /* Open `stdin` */
  bool openStdin = null;
  /* Mount the container's root filesystem as read only. */
  bool readOnly = null;
  /* Specification for mounts to be added to containers created as part of the service.  */
  List<Mount> mounts = [];
  /* Signal to stop the container. */
  String stopSignal = null;
  /* Amount of time to wait for the container to terminate before forcefully killing it.  */
  int stopGracePeriod = null;
  
  HealthConfig healthCheck = null;
  /* A list of hostname/IP mappings to add to the container's `hosts` file. The format of extra hosts is specified in the [hosts(5)](http://man7.org/linux/man-pages/man5/hosts.5.html) man page:      IP_address canonical_hostname [aliases...]  */
  List<String> hosts = [];
  
  TaskSpecContainerSpecDNSConfig dNSConfig = null;
  /* Secrets contains references to zero or more secrets that will be exposed to the service.  */
  List<TaskSpecContainerSpecSecrets> secrets = [];
  /* Configs contains references to zero or more configs that will be exposed to the service.  */
  List<TaskSpecContainerSpecConfigs> configs = [];
  /* Isolation technology of the containers running the service. (Windows only)  */
  String isolation = null;
  //enum isolationEnum {  default,  process,  hyperv,  };{
  /* Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used.  */
  bool init = null;
  /* Set kernel namedspaced parameters (sysctls) in the container. The Sysctls option on services accepts the same sysctls as the are supported on containers. Note that while the same sysctls are supported, no guarantees or checks are made about their suitability for a clustered environment, and it's up to the user to determine whether a given sysctl will work properly in a Service.  */
  Map<String, String> sysctls = {};
  TaskSpecContainerSpec();

  @override
  String toString() {
    return 'TaskSpecContainerSpec[image=$image, labels=$labels, command=$command, args=$args, hostname=$hostname, env=$env, dir=$dir, user=$user, groups=$groups, privileges=$privileges, TTY=$TTY, openStdin=$openStdin, readOnly=$readOnly, mounts=$mounts, stopSignal=$stopSignal, stopGracePeriod=$stopGracePeriod, healthCheck=$healthCheck, hosts=$hosts, dNSConfig=$dNSConfig, secrets=$secrets, configs=$configs, isolation=$isolation, init=$init, sysctls=$sysctls, ]';
  }

  TaskSpecContainerSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    image = json['Image'];
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
    command = (json['Command'] == null) ?
      null :
      (json['Command'] as List).cast<String>();
    args = (json['Args'] == null) ?
      null :
      (json['Args'] as List).cast<String>();
    hostname = json['Hostname'];
    env = (json['Env'] == null) ?
      null :
      (json['Env'] as List).cast<String>();
    dir = json['Dir'];
    user = json['User'];
    groups = (json['Groups'] == null) ?
      null :
      (json['Groups'] as List).cast<String>();
    privileges = (json['Privileges'] == null) ?
      null :
      TaskSpecContainerSpecPrivileges.fromJson(json['Privileges']);
    TTY = json['TTY'];
    openStdin = json['OpenStdin'];
    readOnly = json['ReadOnly'];
    mounts = (json['Mounts'] == null) ?
      null :
      Mount.listFromJson(json['Mounts']);
    stopSignal = json['StopSignal'];
    stopGracePeriod = json['StopGracePeriod'];
    healthCheck = (json['HealthCheck'] == null) ?
      null :
      HealthConfig.fromJson(json['HealthCheck']);
    hosts = (json['Hosts'] == null) ?
      null :
      (json['Hosts'] as List).cast<String>();
    dNSConfig = (json['DNSConfig'] == null) ?
      null :
      TaskSpecContainerSpecDNSConfig.fromJson(json['DNSConfig']);
    secrets = (json['Secrets'] == null) ?
      null :
      TaskSpecContainerSpecSecrets.listFromJson(json['Secrets']);
    configs = (json['Configs'] == null) ?
      null :
      TaskSpecContainerSpecConfigs.listFromJson(json['Configs']);
    isolation = json['Isolation'];
    init = json['Init'];
    sysctls = (json['Sysctls'] == null) ?
      null :
      (json['Sysctls'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (image != null)
      json['Image'] = image;
    if (labels != null)
      json['Labels'] = labels;
    if (command != null)
      json['Command'] = command;
    if (args != null)
      json['Args'] = args;
    if (hostname != null)
      json['Hostname'] = hostname;
    if (env != null)
      json['Env'] = env;
    if (dir != null)
      json['Dir'] = dir;
    if (user != null)
      json['User'] = user;
    if (groups != null)
      json['Groups'] = groups;
    if (privileges != null)
      json['Privileges'] = privileges;
    if (TTY != null)
      json['TTY'] = TTY;
    if (openStdin != null)
      json['OpenStdin'] = openStdin;
    if (readOnly != null)
      json['ReadOnly'] = readOnly;
    if (mounts != null)
      json['Mounts'] = mounts;
    if (stopSignal != null)
      json['StopSignal'] = stopSignal;
    if (stopGracePeriod != null)
      json['StopGracePeriod'] = stopGracePeriod;
    if (healthCheck != null)
      json['HealthCheck'] = healthCheck;
    if (hosts != null)
      json['Hosts'] = hosts;
    if (dNSConfig != null)
      json['DNSConfig'] = dNSConfig;
    if (secrets != null)
      json['Secrets'] = secrets;
    if (configs != null)
      json['Configs'] = configs;
    if (isolation != null)
      json['Isolation'] = isolation;
      json['Init'] = init;
    if (sysctls != null)
      json['Sysctls'] = sysctls;
    return json;
  }

  static List<TaskSpecContainerSpec> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpec>() : json.map((value) => TaskSpecContainerSpec.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpec-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpec>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpec>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpec.listFromJson(value);
       });
     }
     return map;
  }
}

