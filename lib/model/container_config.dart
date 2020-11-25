part of docker_client.api;

class ContainerConfig {
  /* The hostname to use for the container, as a valid RFC 1123 hostname. */
  String hostname = null;
  /* The domain name to use for the container. */
  String domainname = null;
  /* The user that commands are run as inside the container. */
  String user = null;
  /* Whether to attach to `stdin`. */
  bool attachStdin = false;
  /* Whether to attach to `stdout`. */
  bool attachStdout = true;
  /* Whether to attach to `stderr`. */
  bool attachStderr = true;
  /* An object mapping ports to an empty object in the form:  `{\"<port>/<tcp|udp|sctp>\": {}}`  */
  Map<String, dynamic> exposedPorts = {};
  /* Attach standard streams to a TTY, including `stdin` if it is not closed.  */
  bool tty = false;
  /* Open `stdin` */
  bool openStdin = false;
  /* Close `stdin` after one attached client disconnects */
  bool stdinOnce = false;
  /* A list of environment variables to set inside the container in the form `[\"VAR=value\", ...]`. A variable without `=` is removed from the environment, rather than to have an empty value.  */
  List<String> env = [];
  /* Command to run specified as a string or an array of strings.  */
  List<String> cmd = [];

  HealthConfig healthcheck = null;
  /* Command is already escaped (Windows only) */
  bool argsEscaped = null;
  /* The name of the image to use when creating the container/  */
  String image = null;
  /* An object mapping mount point paths inside the container to empty objects.  */
  Map<String, Object> volumes = {};
  /* The working directory for commands to run in. */
  String workingDir = null;
  /* The entry point for the container as a string or an array of strings.  If the array consists of exactly one empty string (`[\"\"]`) then the entry point is reset to system default (i.e., the entry point used by docker when there is no `ENTRYPOINT` instruction in the `Dockerfile`).  */
  List<String> entrypoint = [];
  /* Disable networking for the container. */
  bool networkDisabled = null;
  /* MAC address of the container. */
  String macAddress = null;
  /* `ONBUILD` metadata that were defined in the image's `Dockerfile`.  */
  List<String> onBuild = [];
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  /* Signal to stop a container as a string or unsigned integer.  */
  String stopSignal = "SIGTERM";
  /* Timeout to stop a container in seconds. */
  int stopTimeout = null;
  /* Shell for when `RUN`, `CMD`, and `ENTRYPOINT` uses a shell.  */
  List<String> shell = [];
  ContainerConfig({
    this.argsEscaped,
    this.attachStderr,
    this.attachStdin,
    this.attachStdout,
    this.cmd,
    this.domainname,
    this.entrypoint,
    this.env,
    this.exposedPorts,
    this.healthcheck,
    this.hostname,
    this.image,
    this.labels,
    this.macAddress,
    this.networkDisabled,
    this.onBuild,
    this.openStdin,
    this.shell,
    this.stdinOnce,
    this.stopSignal,
    this.stopTimeout,
    this.tty,
    this.user,
    this.volumes,
    this.workingDir,
  });

  @override
  String toString() {
    return 'ContainerConfig[hostname=$hostname, domainname=$domainname, user=$user, attachStdin=$attachStdin, attachStdout=$attachStdout, attachStderr=$attachStderr, exposedPorts=$exposedPorts, tty=$tty, openStdin=$openStdin, stdinOnce=$stdinOnce, env=$env, cmd=$cmd, healthcheck=$healthcheck, argsEscaped=$argsEscaped, image=$image, volumes=$volumes, workingDir=$workingDir, entrypoint=$entrypoint, networkDisabled=$networkDisabled, macAddress=$macAddress, onBuild=$onBuild, labels=$labels, stopSignal=$stopSignal, stopTimeout=$stopTimeout, shell=$shell, ]';
  }

  ContainerConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hostname = json['Hostname'];
    domainname = json['Domainname'];
    user = json['User'];
    attachStdin = json['AttachStdin'];
    attachStdout = json['AttachStdout'];
    attachStderr = json['AttachStderr'];
    exposedPorts = (json['ExposedPorts'] == null)
        ? null
        : (json['ExposedPorts'] as Map)
            .map((k, v) => MapEntry(k as String, v as dynamic));
    tty = json['Tty'];
    openStdin = json['OpenStdin'];
    stdinOnce = json['StdinOnce'];
    env = (json['Env'] == null) ? null : (json['Env'] as List).cast<String>();
    cmd = (json['Cmd'] == null) ? null : (json['Cmd'] as List).cast<String>();
    healthcheck = (json['Healthcheck'] == null)
        ? null
        : HealthConfig.fromJson(json['Healthcheck']);
    argsEscaped = json['ArgsEscaped'];
    image = json['Image'];
    volumes = (json['Volumes'] == null)
        ? null
        : (json['Volumes'] as Map)
            .map((k, v) => MapEntry(k as String, v as dynamic));
    workingDir = json['WorkingDir'];
    entrypoint = (json['Entrypoint'] == null)
        ? null
        : (json['Entrypoint'] as List).cast<String>();
    networkDisabled = json['NetworkDisabled'];
    macAddress = json['MacAddress'];
    onBuild = (json['OnBuild'] == null)
        ? null
        : (json['OnBuild'] as List).cast<String>();
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
    stopSignal = json['StopSignal'];
    stopTimeout = json['StopTimeout'];
    shell =
        (json['Shell'] == null) ? null : (json['Shell'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (hostname != null) json['Hostname'] = hostname;
    if (domainname != null) json['Domainname'] = domainname;
    if (user != null) json['User'] = user;
    if (attachStdin != null) json['AttachStdin'] = attachStdin;
    if (attachStdout != null) json['AttachStdout'] = attachStdout;
    if (attachStderr != null) json['AttachStderr'] = attachStderr;
    if (exposedPorts != null) json['ExposedPorts'] = exposedPorts;
    if (tty != null) json['Tty'] = tty;
    if (openStdin != null) json['OpenStdin'] = openStdin;
    if (stdinOnce != null) json['StdinOnce'] = stdinOnce;
    if (env != null) json['Env'] = env;
    if (cmd != null) json['Cmd'] = cmd;
    if (healthcheck != null) json['Healthcheck'] = healthcheck;
    if (argsEscaped != null) json['ArgsEscaped'] = argsEscaped;
    if (image != null) json['Image'] = image;
    if (volumes != null) json['Volumes'] = volumes;
    if (workingDir != null) json['WorkingDir'] = workingDir;
    if (entrypoint != null) json['Entrypoint'] = entrypoint;
    if (networkDisabled != null) json['NetworkDisabled'] = networkDisabled;
    if (macAddress != null) json['MacAddress'] = macAddress;
    if (onBuild != null) json['OnBuild'] = onBuild;
    if (labels != null) json['Labels'] = labels;
    if (stopSignal != null) json['StopSignal'] = stopSignal;
    if (stopTimeout != null) json['StopTimeout'] = stopTimeout;
    if (shell != null) json['Shell'] = shell;
    return json;
  }

  static List<ContainerConfig> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ContainerConfig>()
        : json.map((value) => ContainerConfig.fromJson(value)).toList();
  }

  static Map<String, ContainerConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContainerConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerConfig-objects as value to a dart map
  static Map<String, List<ContainerConfig>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ContainerConfig>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ContainerConfig.listFromJson(value);
      });
    }
    return map;
  }
}
