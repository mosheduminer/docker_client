part of docker_client.api;

class SystemInfo {
  /* Unique identifier of the daemon.  <p><br /></p>  > **Note**: The format of the ID itself is not part of the API, and > should not be considered stable.  */
  String ID = null;
  /* Total number of containers on the host. */
  int containers = null;
  /* Number of containers with status `\"running\"`.  */
  int containersRunning = null;
  /* Number of containers with status `\"paused\"`.  */
  int containersPaused = null;
  /* Number of containers with status `\"stopped\"`.  */
  int containersStopped = null;
  /* Total number of images on the host.  Both _tagged_ and _untagged_ (dangling) images are counted.  */
  int images = null;
  /* Name of the storage driver in use. */
  String driver = null;
  /* Information specific to the storage driver, provided as \"label\" / \"value\" pairs.  This information is provided by the storage driver, and formatted in a way consistent with the output of `docker info` on the command line.  <p><br /></p>  > **Note**: The information returned in this field, including the > formatting of values and labels, should not be considered stable, > and may change without notice.  */
  List<List<String>> driverStatus = [];
  /* Root directory of persistent Docker state.  Defaults to `/var/lib/docker` on Linux, and `C:\\ProgramData\\docker` on Windows.  */
  String dockerRootDir = null;
  /* Status information about this node (standalone Swarm API).  <p><br /></p>  > **Note**: The information returned in this field is only propagated > by the Swarm standalone API, and is empty (`null`) when using > built-in swarm mode.  */
  List<List<String>> systemStatus = [];

  PluginsInfo plugins = null;
  /* Indicates if the host has memory limit support enabled. */
  bool memoryLimit = null;
  /* Indicates if the host has memory swap limit support enabled. */
  bool swapLimit = null;
  /* Indicates if the host has kernel memory limit support enabled. */
  bool kernelMemory = null;
  /* Indicates if CPU CFS(Completely Fair Scheduler) period is supported by the host.  */
  bool cpuCfsPeriod = null;
  /* Indicates if CPU CFS(Completely Fair Scheduler) quota is supported by the host.  */
  bool cpuCfsQuota = null;
  /* Indicates if CPU Shares limiting is supported by the host.  */
  bool cPUShares = null;
  /* Indicates if CPUsets (cpuset.cpus, cpuset.mems) are supported by the host.  See [cpuset(7)](https://www.kernel.org/doc/Documentation/cgroup-v1/cpusets.txt)  */
  bool cPUSet = null;
  /* Indicates if the host kernel has PID limit support enabled. */
  bool pidsLimit = null;
  /* Indicates if OOM killer disable is supported on the host. */
  bool oomKillDisable = null;
  /* Indicates IPv4 forwarding is enabled. */
  bool iPv4Forwarding = null;
  /* Indicates if `bridge-nf-call-iptables` is available on the host. */
  bool bridgeNfIptables = null;
  /* Indicates if `bridge-nf-call-ip6tables` is available on the host. */
  bool bridgeNfIp6tables = null;
  /* Indicates if the daemon is running in debug-mode / with debug-level logging enabled.  */
  bool debug = null;
  /* The total number of file Descriptors in use by the daemon process.  This information is only returned if debug-mode is enabled.  */
  int nFd = null;
  /* The  number of goroutines that currently exist.  This information is only returned if debug-mode is enabled.  */
  int nGoroutines = null;
  /* Current system-time in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String systemTime = null;
  /* The logging driver to use as a default for new containers.  */
  String loggingDriver = null;
  /* The driver to use for managing cgroups.  */
  String cgroupDriver = "cgroupfs";
  //enum cgroupDriverEnum {  cgroupfs,  systemd,  none,  };{
  /* Number of event listeners subscribed. */
  int nEventsListener = null;
  /* Kernel version of the host.  On Linux, this information obtained from `uname`. On Windows this information is queried from the <kbd>HKEY_LOCAL_MACHINE\\\\SOFTWARE\\\\Microsoft\\\\Windows NT\\\\CurrentVersion\\\\</kbd> registry value, for example _\"10.0 14393 (14393.1198.amd64fre.rs1_release_sec.170427-1353)\"_.  */
  String kernelVersion = null;
  /* Name of the host's operating system, for example: \"Ubuntu 16.04.2 LTS\" or \"Windows Server 2016 Datacenter\"  */
  String operatingSystem = null;
  /* Generic type of the operating system of the host, as returned by the Go runtime (`GOOS`).  Currently returned values are \"linux\" and \"windows\". A full list of possible values can be found in the [Go documentation](https://golang.org/doc/install/source#environment).  */
  String oSType = null;
  /* Hardware architecture of the host, as returned by the Go runtime (`GOARCH`).  A full list of possible values can be found in the [Go documentation](https://golang.org/doc/install/source#environment).  */
  String architecture = null;
  /* The number of logical CPUs usable by the daemon.  The number of available CPUs is checked by querying the operating system when the daemon starts. Changes to operating system CPU allocation after the daemon is started are not reflected.  */
  int NCPU = null;
  /* Total amount of physical memory available on the host, in bytes.  */
  int memTotal = null;
  /* Address / URL of the index server that is used for image search, and as a default for user authentication for Docker Hub and Docker Cloud.  */
  String indexServerAddress = "https://index.docker.io/v1/";

  RegistryServiceConfig registryConfig = null;
  /* User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`).  */
  List<Map<String, dynamic>> genericResources = [];
  /* HTTP-proxy configured for the daemon. This value is obtained from the [`HTTP_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable. Credentials ([user info component](https://tools.ietf.org/html/rfc3986#section-3.2.1)) in the proxy URL are masked in the API response.  Containers do not automatically inherit this configuration.  */
  String httpProxy = null;
  /* HTTPS-proxy configured for the daemon. This value is obtained from the [`HTTPS_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable. Credentials ([user info component](https://tools.ietf.org/html/rfc3986#section-3.2.1)) in the proxy URL are masked in the API response.  Containers do not automatically inherit this configuration.  */
  String httpsProxy = null;
  /* Comma-separated list of domain extensions for which no proxy should be used. This value is obtained from the [`NO_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable.  Containers do not automatically inherit this configuration.  */
  String noProxy = null;
  /* Hostname of the host. */
  String name = null;
  /* User-defined labels (key/value metadata) as set on the daemon.  <p><br /></p>  > **Note**: When part of a Swarm, nodes can both have _daemon_ labels, > set through the daemon configuration, and _node_ labels, set from a > manager node in the Swarm. Node labels are not included in this > field. Node labels can be retrieved using the `/nodes/(id)` endpoint > on a manager node in the Swarm.  */
  List<String> labels = [];
  /* Indicates if experimental features are enabled on the daemon.  */
  bool experimentalBuild = null;
  /* Version string of the daemon.  > **Note**: the [standalone Swarm API](https://docs.docker.com/swarm/swarm-api/) > returns the Swarm version instead of the daemon  version, for example > `swarm/1.2.8`.  */
  String serverVersion = null;
  /* URL of the distributed storage backend.   The storage backend is used for multihost networking (to store network and endpoint information) and by the node discovery mechanism.  <p><br /></p>  > **Note**: This field is only propagated when using standalone Swarm > mode, and overlay networking using an external k/v store. Overlay > networks with Swarm mode enabled use the built-in raft store, and > this field will be empty.  */
  String clusterStore = null;
  /* The network endpoint that the Engine advertises for the purpose of node discovery. ClusterAdvertise is a `host:port` combination on which the daemon is reachable by other hosts.  <p><br /></p>  > **Note**: This field is only propagated when using standalone Swarm > mode, and overlay networking using an external k/v store. Overlay > networks with Swarm mode enabled use the built-in raft store, and > this field will be empty.  */
  String clusterAdvertise = null;
  /* List of [OCI compliant](https://github.com/opencontainers/runtime-spec) runtimes configured on the daemon. Keys hold the \"name\" used to reference the runtime.  The Docker daemon relies on an OCI compliant runtime (invoked via the `containerd` daemon) as its interface to the Linux kernel namespaces, cgroups, and SELinux.  The default runtime is `runc`, and automatically configured. Additional runtimes can be configured by the user and will be listed here.  */
  Map<String, Runtime> runtimes = {};
  /* Name of the default OCI runtime that is used when starting containers.  The default can be overridden per-container at create time.  */
  String defaultRuntime = "runc";

  SwarmInfo swarm = null;
  /* Indicates if live restore is enabled.  If enabled, containers are kept running when the daemon is shutdown or upon daemon start if running containers are detected.  */
  bool liveRestoreEnabled = false;
  /* Represents the isolation technology to use as a default for containers. The supported values are platform-specific.  If no isolation value is specified on daemon start, on Windows client, the default is `hyperv`, and on Windows server, the default is `process`.  This option is currently not used on other platforms.  */
  String isolation = "default";
  //enum isolationEnum {  default,  hyperv,  process,  };{
  /* Name and, optional, path of the `docker-init` binary.  If the path is omitted, the daemon searches the host's `$PATH` for the binary and uses the first result.  */
  String initBinary = null;

  Commit containerdCommit = null;

  Commit runcCommit = null;

  Commit initCommit = null;
  /* List of security features that are enabled on the daemon, such as apparmor, seccomp, SELinux, user-namespaces (userns), and rootless.  Additional configuration options for each security feature may be present, and are included as a comma-separated list of key/value pairs.  */
  List<String> securityOptions = [];
  /* Reports a summary of the product license on the daemon.  If a commercial license has been applied to the daemon, information such as number of nodes, and expiration are included.  */
  String productLicense = null;
  /* List of warnings / informational messages about missing features, or issues related to the daemon configuration.  These messages can be printed by the client as information to the user.  */
  List<String> warnings = [];
  SystemInfo();

  @override
  String toString() {
    return 'SystemInfo[ID=$ID, containers=$containers, containersRunning=$containersRunning, containersPaused=$containersPaused, containersStopped=$containersStopped, images=$images, driver=$driver, driverStatus=$driverStatus, dockerRootDir=$dockerRootDir, systemStatus=$systemStatus, plugins=$plugins, memoryLimit=$memoryLimit, swapLimit=$swapLimit, kernelMemory=$kernelMemory, cpuCfsPeriod=$cpuCfsPeriod, cpuCfsQuota=$cpuCfsQuota, cPUShares=$cPUShares, cPUSet=$cPUSet, pidsLimit=$pidsLimit, oomKillDisable=$oomKillDisable, iPv4Forwarding=$iPv4Forwarding, bridgeNfIptables=$bridgeNfIptables, bridgeNfIp6tables=$bridgeNfIp6tables, debug=$debug, nFd=$nFd, nGoroutines=$nGoroutines, systemTime=$systemTime, loggingDriver=$loggingDriver, cgroupDriver=$cgroupDriver, nEventsListener=$nEventsListener, kernelVersion=$kernelVersion, operatingSystem=$operatingSystem, oSType=$oSType, architecture=$architecture, NCPU=$NCPU, memTotal=$memTotal, indexServerAddress=$indexServerAddress, registryConfig=$registryConfig, genericResources=$genericResources, httpProxy=$httpProxy, httpsProxy=$httpsProxy, noProxy=$noProxy, name=$name, labels=$labels, experimentalBuild=$experimentalBuild, serverVersion=$serverVersion, clusterStore=$clusterStore, clusterAdvertise=$clusterAdvertise, runtimes=$runtimes, defaultRuntime=$defaultRuntime, swarm=$swarm, liveRestoreEnabled=$liveRestoreEnabled, isolation=$isolation, initBinary=$initBinary, containerdCommit=$containerdCommit, runcCommit=$runcCommit, initCommit=$initCommit, securityOptions=$securityOptions, productLicense=$productLicense, warnings=$warnings, ]';
  }

  SystemInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    containers = json['Containers'];
    containersRunning = json['ContainersRunning'];
    containersPaused = json['ContainersPaused'];
    containersStopped = json['ContainersStopped'];
    images = json['Images'];
    driver = json['Driver'];
    driverStatus = (json['DriverStatus'] == null)
        ? null
        : (json['DriverStatus'] as List)
            .map((e) => (e as List).map((e) => e as String).toList())
            .toList();
    dockerRootDir = json['DockerRootDir'];
    systemStatus = (json['SystemStatus'] == null)
        ? null
        : (json['SystemStatus'] as List)
            .map((e) => (e as List).map((e) => e as String).toList())
            .toList();
    plugins = (json['Plugins'] == null)
        ? null
        : PluginsInfo.fromJson(json['Plugins']);
    memoryLimit = json['MemoryLimit'];
    swapLimit = json['SwapLimit'];
    kernelMemory = json['KernelMemory'];
    cpuCfsPeriod = json['CpuCfsPeriod'];
    cpuCfsQuota = json['CpuCfsQuota'];
    cPUShares = json['CPUShares'];
    cPUSet = json['CPUSet'];
    pidsLimit = json['PidsLimit'];
    oomKillDisable = json['OomKillDisable'];
    iPv4Forwarding = json['IPv4Forwarding'];
    bridgeNfIptables = json['BridgeNfIptables'];
    bridgeNfIp6tables = json['BridgeNfIp6tables'];
    debug = json['Debug'];
    nFd = json['NFd'];
    nGoroutines = json['NGoroutines'];
    systemTime = json['SystemTime'];
    loggingDriver = json['LoggingDriver'];
    cgroupDriver = json['CgroupDriver'];
    nEventsListener = json['NEventsListener'];
    kernelVersion = json['KernelVersion'];
    operatingSystem = json['OperatingSystem'];
    oSType = json['OSType'];
    architecture = json['Architecture'];
    NCPU = json['NCPU'];
    memTotal = json['MemTotal'];
    indexServerAddress = json['IndexServerAddress'];
    registryConfig = (json['RegistryConfig'] == null)
        ? null
        : RegistryServiceConfig.fromJson(json['RegistryConfig']);
    genericResources = (json['GenericResources'] == null)
        ? null
        : (json['GenericResources'] as List)
            .map((e) =>
                (e as Map).map((k, v) => MapEntry(k as String, v as dynamic)))
            .toList();
    httpProxy = json['HttpProxy'];
    httpsProxy = json['HttpsProxy'];
    noProxy = json['NoProxy'];
    name = json['Name'];
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as List).cast<String>();
    experimentalBuild = json['ExperimentalBuild'];
    serverVersion = json['ServerVersion'];
    clusterStore = json['ClusterStore'];
    clusterAdvertise = json['ClusterAdvertise'];
    runtimes = (json['Runtimes'] == null)
        ? null
        : Runtime.mapFromJson(json['Runtimes']);
    defaultRuntime = json['DefaultRuntime'];
    swarm = (json['Swarm'] == null) ? null : SwarmInfo.fromJson(json['Swarm']);
    liveRestoreEnabled = json['LiveRestoreEnabled'];
    isolation = json['Isolation'];
    initBinary = json['InitBinary'];
    containerdCommit = (json['ContainerdCommit'] == null)
        ? null
        : Commit.fromJson(json['ContainerdCommit']);
    runcCommit = (json['RuncCommit'] == null)
        ? null
        : Commit.fromJson(json['RuncCommit']);
    initCommit = (json['InitCommit'] == null)
        ? null
        : Commit.fromJson(json['InitCommit']);
    securityOptions = (json['SecurityOptions'] == null)
        ? null
        : (json['SecurityOptions'] as List).cast<String>();
    productLicense = json['ProductLicense'];
    warnings = (json['Warnings'] == null)
        ? null
        : (json['Warnings'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (ID != null) json['ID'] = ID;
    if (containers != null) json['Containers'] = containers;
    if (containersRunning != null)
      json['ContainersRunning'] = containersRunning;
    if (containersPaused != null) json['ContainersPaused'] = containersPaused;
    if (containersStopped != null)
      json['ContainersStopped'] = containersStopped;
    if (images != null) json['Images'] = images;
    if (driver != null) json['Driver'] = driver;
    if (driverStatus != null) json['DriverStatus'] = driverStatus;
    if (dockerRootDir != null) json['DockerRootDir'] = dockerRootDir;
    if (systemStatus != null) json['SystemStatus'] = systemStatus;
    if (plugins != null) json['Plugins'] = plugins;
    if (memoryLimit != null) json['MemoryLimit'] = memoryLimit;
    if (swapLimit != null) json['SwapLimit'] = swapLimit;
    if (kernelMemory != null) json['KernelMemory'] = kernelMemory;
    if (cpuCfsPeriod != null) json['CpuCfsPeriod'] = cpuCfsPeriod;
    if (cpuCfsQuota != null) json['CpuCfsQuota'] = cpuCfsQuota;
    if (cPUShares != null) json['CPUShares'] = cPUShares;
    if (cPUSet != null) json['CPUSet'] = cPUSet;
    if (pidsLimit != null) json['PidsLimit'] = pidsLimit;
    if (oomKillDisable != null) json['OomKillDisable'] = oomKillDisable;
    if (iPv4Forwarding != null) json['IPv4Forwarding'] = iPv4Forwarding;
    if (bridgeNfIptables != null) json['BridgeNfIptables'] = bridgeNfIptables;
    if (bridgeNfIp6tables != null)
      json['BridgeNfIp6tables'] = bridgeNfIp6tables;
    if (debug != null) json['Debug'] = debug;
    if (nFd != null) json['NFd'] = nFd;
    if (nGoroutines != null) json['NGoroutines'] = nGoroutines;
    if (systemTime != null) json['SystemTime'] = systemTime;
    if (loggingDriver != null) json['LoggingDriver'] = loggingDriver;
    if (cgroupDriver != null) json['CgroupDriver'] = cgroupDriver;
    if (nEventsListener != null) json['NEventsListener'] = nEventsListener;
    if (kernelVersion != null) json['KernelVersion'] = kernelVersion;
    if (operatingSystem != null) json['OperatingSystem'] = operatingSystem;
    if (oSType != null) json['OSType'] = oSType;
    if (architecture != null) json['Architecture'] = architecture;
    if (NCPU != null) json['NCPU'] = NCPU;
    if (memTotal != null) json['MemTotal'] = memTotal;
    if (indexServerAddress != null)
      json['IndexServerAddress'] = indexServerAddress;
    json['RegistryConfig'] = registryConfig;
    if (genericResources != null) json['GenericResources'] = genericResources;
    if (httpProxy != null) json['HttpProxy'] = httpProxy;
    if (httpsProxy != null) json['HttpsProxy'] = httpsProxy;
    if (noProxy != null) json['NoProxy'] = noProxy;
    if (name != null) json['Name'] = name;
    if (labels != null) json['Labels'] = labels;
    if (experimentalBuild != null)
      json['ExperimentalBuild'] = experimentalBuild;
    if (serverVersion != null) json['ServerVersion'] = serverVersion;
    if (clusterStore != null) json['ClusterStore'] = clusterStore;
    if (clusterAdvertise != null) json['ClusterAdvertise'] = clusterAdvertise;
    if (runtimes != null) json['Runtimes'] = runtimes;
    if (defaultRuntime != null) json['DefaultRuntime'] = defaultRuntime;
    if (swarm != null) json['Swarm'] = swarm;
    if (liveRestoreEnabled != null)
      json['LiveRestoreEnabled'] = liveRestoreEnabled;
    if (isolation != null) json['Isolation'] = isolation;
    if (initBinary != null) json['InitBinary'] = initBinary;
    if (containerdCommit != null) json['ContainerdCommit'] = containerdCommit;
    if (runcCommit != null) json['RuncCommit'] = runcCommit;
    if (initCommit != null) json['InitCommit'] = initCommit;
    if (securityOptions != null) json['SecurityOptions'] = securityOptions;
    if (productLicense != null) json['ProductLicense'] = productLicense;
    if (warnings != null) json['Warnings'] = warnings;
    return json;
  }

  static List<SystemInfo> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SystemInfo>()
        : json.map((value) => SystemInfo.fromJson(value)).toList();
  }

  static Map<String, SystemInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = SystemInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemInfo-objects as value to a dart map
  static Map<String, List<SystemInfo>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<SystemInfo>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = SystemInfo.listFromJson(value);
      });
    }
    return map;
  }
}
