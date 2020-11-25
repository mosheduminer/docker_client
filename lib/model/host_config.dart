part of docker_client.api;

class HostConfig {
  /* An integer value representing this container's relative CPU weight versus other containers.  */
  int cpuShares = null;
  /* Memory limit in bytes. */
  int memory = 0;
  /* Path to `cgroups` under which the container's `cgroup` is created. If the path is not absolute, the path is considered to be relative to the `cgroups` path of the init process. Cgroups are created if they do not already exist.  */
  String cgroupParent = null;
  /* Block IO weight (relative weight). */
  int blkioWeight = null;
  /* Block IO weight (relative device weight) in the form:  ``` [{\"Path\": \"device_path\", \"Weight\": weight}] ```  */
  List<ResourcesBlkioWeightDevice> blkioWeightDevice = [];
  /* Limit read rate (bytes per second) from a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```  */
  List<ThrottleDevice> blkioDeviceReadBps = [];
  /* Limit write rate (bytes per second) to a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```  */
  List<ThrottleDevice> blkioDeviceWriteBps = [];
  /* Limit read rate (IO per second) from a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```  */
  List<ThrottleDevice> blkioDeviceReadIOps = [];
  /* Limit write rate (IO per second) to a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```  */
  List<ThrottleDevice> blkioDeviceWriteIOps = [];
  /* The length of a CPU period in microseconds. */
  int cpuPeriod = null;
  /* Microseconds of CPU time that the container can get in a CPU period.  */
  int cpuQuota = null;
  /* The length of a CPU real-time period in microseconds. Set to 0 to allocate no time allocated to real-time tasks.  */
  int cpuRealtimePeriod = null;
  /* The length of a CPU real-time runtime in microseconds. Set to 0 to allocate no time allocated to real-time tasks.  */
  int cpuRealtimeRuntime = null;
  /* CPUs in which to allow execution (e.g., `0-3`, `0,1`).  */
  String cpusetCpus = null;
  /* Memory nodes (MEMs) in which to allow execution (0-3, 0,1). Only effective on NUMA systems.  */
  String cpusetMems = null;
  /* A list of devices to add to the container. */
  List<DeviceMapping> devices = [];
  /* a list of cgroup rules to apply to the container */
  List<String> deviceCgroupRules = [];
  /* A list of requests for devices to be sent to device drivers.  */
  List<DeviceRequest> deviceRequests = [];
  /* Kernel memory limit in bytes. */
  int kernelMemory = null;
  /* Hard limit for kernel TCP buffer memory (in bytes). */
  int kernelMemoryTCP = null;
  /* Memory soft limit in bytes. */
  int memoryReservation = null;
  /* Total memory limit (memory + swap). Set as `-1` to enable unlimited swap.  */
  int memorySwap = null;
  /* Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100.  */
  int memorySwappiness = null;
  /* CPU quota in units of 10<sup>-9</sup> CPUs. */
  int nanoCPUs = null;
  /* Disable OOM Killer for the container. */
  bool oomKillDisable = null;
  /* Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used.  */
  bool init = null;
  /* Tune a container's PIDs limit. Set `0` or `-1` for unlimited, or `null` to not change.  */
  int pidsLimit = null;
  /* A list of resource limits to set in the container. For example:  ``` {\"Name\": \"nofile\", \"Soft\": 1024, \"Hard\": 2048} ```  */
  List<ResourcesUlimits> ulimits = [];
  /* The number of usable CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is `CPUCount` first, then `CPUShares`, and `CPUPercent` last.  */
  int cpuCount = null;
  /* The usable percentage of the available CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is `CPUCount` first, then `CPUShares`, and `CPUPercent` last.  */
  int cpuPercent = null;
  /* Maximum IOps for the container system drive (Windows only) */
  int iOMaximumIOps = null;
  /* Maximum IO in bytes per second for the container system drive (Windows only).  */
  int iOMaximumBandwidth = null;
  /* A list of volume bindings for this container. Each volume binding is a string in one of these forms:  - `host-src:container-dest[:options]` to bind-mount a host path   into the container. Both `host-src`, and `container-dest` must   be an _absolute_ path. - `volume-name:container-dest[:options]` to bind-mount a volume   managed by a volume driver into the container. `container-dest`   must be an _absolute_ path.  `options` is an optional, comma-delimited list of:  - `nocopy` disables automatic copying of data from the container   path to the volume. The `nocopy` flag only applies to named volumes. - `[ro|rw]` mounts a volume read-only or read-write, respectively.   If omitted or set to `rw`, volumes are mounted read-write. - `[z|Z]` applies SELinux labels to allow or deny multiple containers   to read and write to the same volume.     - `z`: a _shared_ content label is applied to the content. This       label indicates that multiple containers can share the volume       content, for both reading and writing.     - `Z`: a _private unshared_ label is applied to the content.       This label indicates that only the current container can use       a private volume. Labeling systems such as SELinux require       proper labels to be placed on volume content that is mounted       into a container. Without a label, the security system can       prevent a container's processes from using the content. By       default, the labels set by the host operating system are not       modified. - `[[r]shared|[r]slave|[r]private]` specifies mount   [propagation behavior](https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt).   This only applies to bind-mounted volumes, not internal volumes   or named volumes. Mount propagation requires the source mount   point (the location where the source directory is mounted in the   host operating system) to have the correct propagation properties.   For shared volumes, the source mount point must be set to `shared`.   For slave volumes, the mount must be set to either `shared` or   `slave`.  */
  List<String> binds = [];
  /* Path to a file where the container ID is written */
  String containerIDFile = null;
  
  HostConfigAllOfLogConfig logConfig = null;
  /* Network mode to use for this container. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name to which this container should connect to.  */
  String networkMode = null;
  /* PortMap describes the mapping of container ports to host ports, using the container's port-number and protocol as key in the format `<port>/<protocol>`, for example, `80/udp`.  If a container's port is mapped for multiple protocols, separate entries are added to the mapping table.  */
  Map<String, List<PortBinding>> portBindings = {};
  
  RestartPolicy restartPolicy = null;
  /* Automatically remove the container when the container's process exits. This has no effect if `RestartPolicy` is set.  */
  bool autoRemove = null;
  /* Driver that this container uses to mount volumes. */
  String volumeDriver = null;
  /* A list of volumes to inherit from another container, specified in the form `<container name>[:<ro|rw>]`.  */
  List<String> volumesFrom = [];
  /* Specification for mounts to be added to the container.  */
  List<Mount> mounts = [];
  /* A list of kernel capabilities to be available for container (this overrides the default set).  Conflicts with options 'CapAdd' and 'CapDrop'\"  */
  List<String> capabilities = [];
  /* A list of kernel capabilities to add to the container. Conflicts with option 'Capabilities'.  */
  List<String> capAdd = [];
  /* A list of kernel capabilities to drop from the container. Conflicts with option 'Capabilities'.  */
  List<String> capDrop = [];
  /* A list of DNS servers for the container to use. */
  List<String> dns = [];
  /* A list of DNS options. */
  List<String> dnsOptions = [];
  /* A list of DNS search domains. */
  List<String> dnsSearch = [];
  /* A list of hostnames/IP mappings to add to the container's `/etc/hosts` file. Specified in the form `[\"hostname:IP\"]`.  */
  List<String> extraHosts = [];
  /* A list of additional groups that the container process will run as.  */
  List<String> groupAdd = [];
  /* IPC sharing mode for the container. Possible values are:  - `\"none\"`: own private IPC namespace, with /dev/shm not mounted - `\"private\"`: own private IPC namespace - `\"shareable\"`: own private IPC namespace, with a possibility to share it with other containers - `\"container:<name|id>\"`: join another (shareable) container's IPC namespace - `\"host\"`: use the host system's IPC namespace  If not specified, daemon default is used, which can either be `\"private\"` or `\"shareable\"`, depending on daemon version and configuration.  */
  String ipcMode = null;
  /* Cgroup to use for the container. */
  String cgroup = null;
  /* A list of links for the container in the form `container_name:alias`.  */
  List<String> links = [];
  /* An integer value containing the score given to the container in order to tune OOM killer preferences.  */
  int oomScoreAdj = null;
  /* Set the PID (Process) Namespace mode for the container. It can be either:  - `\"container:<name|id>\"`: joins another container's PID namespace - `\"host\"`: use the host's PID namespace inside the container  */
  String pidMode = null;
  /* Gives the container full access to the host. */
  bool privileged = null;
  /* Allocates an ephemeral host port for all of a container's exposed ports.  Ports are de-allocated when the container stops and allocated when the container starts. The allocated port might be changed when restarting the container.  The port is selected from the ephemeral port range that depends on the kernel. For example, on Linux the range is defined by `/proc/sys/net/ipv4/ip_local_port_range`.  */
  bool publishAllPorts = null;
  /* Mount the container's root filesystem as read only. */
  bool readonlyRootfs = null;
  /* A list of string values to customize labels for MLS systems, such as SELinux. */
  List<String> securityOpt = [];
  /* Storage driver options for this container, in the form `{\"size\": \"120G\"}`.  */
  Map<String, String> storageOpt = {};
  /* A map of container directories which should be replaced by tmpfs mounts, and their corresponding mount options. For example:  ``` { \"/run\": \"rw,noexec,nosuid,size=65536k\" } ```  */
  Map<String, String> tmpfs = {};
  /* UTS namespace to use for the container. */
  String uTSMode = null;
  /* Sets the usernamespace mode for the container when usernamespace remapping option is enabled.  */
  String usernsMode = null;
  /* Size of `/dev/shm` in bytes. If omitted, the system uses 64MB.  */
  int shmSize = null;
  /* A list of kernel parameters (sysctls) to set in the container. For example:  ``` {\"net.ipv4.ip_forward\": \"1\"} ```  */
  Map<String, String> sysctls = {};
  /* Runtime to use with this container. */
  String runtime = null;
  /* Initial console size, as an `[height, width]` array. (Windows only)  */
  List<int> consoleSize = [];
  /* Isolation technology of the container. (Windows only)  */
  String isolation = null;
  //enum isolationEnum {  default,  process,  hyperv,  };{
  /* The list of paths to be masked inside the container (this overrides the default set of paths).  */
  List<String> maskedPaths = [];
  /* The list of paths to be set as read-only inside the container (this overrides the default set of paths).  */
  List<String> readonlyPaths = [];
  HostConfig();

  @override
  String toString() {
    return 'HostConfig[cpuShares=$cpuShares, memory=$memory, cgroupParent=$cgroupParent, blkioWeight=$blkioWeight, blkioWeightDevice=$blkioWeightDevice, blkioDeviceReadBps=$blkioDeviceReadBps, blkioDeviceWriteBps=$blkioDeviceWriteBps, blkioDeviceReadIOps=$blkioDeviceReadIOps, blkioDeviceWriteIOps=$blkioDeviceWriteIOps, cpuPeriod=$cpuPeriod, cpuQuota=$cpuQuota, cpuRealtimePeriod=$cpuRealtimePeriod, cpuRealtimeRuntime=$cpuRealtimeRuntime, cpusetCpus=$cpusetCpus, cpusetMems=$cpusetMems, devices=$devices, deviceCgroupRules=$deviceCgroupRules, deviceRequests=$deviceRequests, kernelMemory=$kernelMemory, kernelMemoryTCP=$kernelMemoryTCP, memoryReservation=$memoryReservation, memorySwap=$memorySwap, memorySwappiness=$memorySwappiness, nanoCPUs=$nanoCPUs, oomKillDisable=$oomKillDisable, init=$init, pidsLimit=$pidsLimit, ulimits=$ulimits, cpuCount=$cpuCount, cpuPercent=$cpuPercent, iOMaximumIOps=$iOMaximumIOps, iOMaximumBandwidth=$iOMaximumBandwidth, binds=$binds, containerIDFile=$containerIDFile, logConfig=$logConfig, networkMode=$networkMode, portBindings=$portBindings, restartPolicy=$restartPolicy, autoRemove=$autoRemove, volumeDriver=$volumeDriver, volumesFrom=$volumesFrom, mounts=$mounts, capabilities=$capabilities, capAdd=$capAdd, capDrop=$capDrop, dns=$dns, dnsOptions=$dnsOptions, dnsSearch=$dnsSearch, extraHosts=$extraHosts, groupAdd=$groupAdd, ipcMode=$ipcMode, cgroup=$cgroup, links=$links, oomScoreAdj=$oomScoreAdj, pidMode=$pidMode, privileged=$privileged, publishAllPorts=$publishAllPorts, readonlyRootfs=$readonlyRootfs, securityOpt=$securityOpt, storageOpt=$storageOpt, tmpfs=$tmpfs, uTSMode=$uTSMode, usernsMode=$usernsMode, shmSize=$shmSize, sysctls=$sysctls, runtime=$runtime, consoleSize=$consoleSize, isolation=$isolation, maskedPaths=$maskedPaths, readonlyPaths=$readonlyPaths, ]';
  }

  HostConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cpuShares = json['CpuShares'];
    memory = json['Memory'];
    cgroupParent = json['CgroupParent'];
    blkioWeight = json['BlkioWeight'];
    blkioWeightDevice = (json['BlkioWeightDevice'] == null) ?
      null :
      ResourcesBlkioWeightDevice.listFromJson(json['BlkioWeightDevice']);
    blkioDeviceReadBps = (json['BlkioDeviceReadBps'] == null) ?
      null :
      ThrottleDevice.listFromJson(json['BlkioDeviceReadBps']);
    blkioDeviceWriteBps = (json['BlkioDeviceWriteBps'] == null) ?
      null :
      ThrottleDevice.listFromJson(json['BlkioDeviceWriteBps']);
    blkioDeviceReadIOps = (json['BlkioDeviceReadIOps'] == null) ?
      null :
      ThrottleDevice.listFromJson(json['BlkioDeviceReadIOps']);
    blkioDeviceWriteIOps = (json['BlkioDeviceWriteIOps'] == null) ?
      null :
      ThrottleDevice.listFromJson(json['BlkioDeviceWriteIOps']);
    cpuPeriod = json['CpuPeriod'];
    cpuQuota = json['CpuQuota'];
    cpuRealtimePeriod = json['CpuRealtimePeriod'];
    cpuRealtimeRuntime = json['CpuRealtimeRuntime'];
    cpusetCpus = json['CpusetCpus'];
    cpusetMems = json['CpusetMems'];
    devices = (json['Devices'] == null) ?
      null :
      DeviceMapping.listFromJson(json['Devices']);
    deviceCgroupRules = (json['DeviceCgroupRules'] == null) ?
      null :
      (json['DeviceCgroupRules'] as List).cast<String>();
    deviceRequests = (json['DeviceRequests'] == null) ?
      null :
      DeviceRequest.listFromJson(json['DeviceRequests']);
    kernelMemory = json['KernelMemory'];
    kernelMemoryTCP = json['KernelMemoryTCP'];
    memoryReservation = json['MemoryReservation'];
    memorySwap = json['MemorySwap'];
    memorySwappiness = json['MemorySwappiness'];
    nanoCPUs = json['NanoCPUs'];
    oomKillDisable = json['OomKillDisable'];
    init = json['Init'];
    pidsLimit = json['PidsLimit'];
    ulimits = (json['Ulimits'] == null) ?
      null :
      ResourcesUlimits.listFromJson(json['Ulimits']);
    cpuCount = json['CpuCount'];
    cpuPercent = json['CpuPercent'];
    iOMaximumIOps = json['IOMaximumIOps'];
    iOMaximumBandwidth = json['IOMaximumBandwidth'];
    binds = (json['Binds'] == null) ?
      null :
      (json['Binds'] as List).cast<String>();
    containerIDFile = json['ContainerIDFile'];
    logConfig = (json['LogConfig'] == null) ?
      null :
      HostConfigAllOfLogConfig.fromJson(json['LogConfig']);
    networkMode = json['NetworkMode'];
    portBindings = (json['PortBindings'] == null) ?
      null :
      PortBinding.mapListFromJson(json['PortBindings']);
    restartPolicy = (json['RestartPolicy'] == null) ?
      null :
      RestartPolicy.fromJson(json['RestartPolicy']);
    autoRemove = json['AutoRemove'];
    volumeDriver = json['VolumeDriver'];
    volumesFrom = (json['VolumesFrom'] == null) ?
      null :
      (json['VolumesFrom'] as List).cast<String>();
    mounts = (json['Mounts'] == null) ?
      null :
      Mount.listFromJson(json['Mounts']);
    capabilities = (json['Capabilities'] == null) ?
      null :
      (json['Capabilities'] as List).cast<String>();
    capAdd = (json['CapAdd'] == null) ?
      null :
      (json['CapAdd'] as List).cast<String>();
    capDrop = (json['CapDrop'] == null) ?
      null :
      (json['CapDrop'] as List).cast<String>();
    dns = (json['Dns'] == null) ?
      null :
      (json['Dns'] as List).cast<String>();
    dnsOptions = (json['DnsOptions'] == null) ?
      null :
      (json['DnsOptions'] as List).cast<String>();
    dnsSearch = (json['DnsSearch'] == null) ?
      null :
      (json['DnsSearch'] as List).cast<String>();
    extraHosts = (json['ExtraHosts'] == null) ?
      null :
      (json['ExtraHosts'] as List).cast<String>();
    groupAdd = (json['GroupAdd'] == null) ?
      null :
      (json['GroupAdd'] as List).cast<String>();
    ipcMode = json['IpcMode'];
    cgroup = json['Cgroup'];
    links = (json['Links'] == null) ?
      null :
      (json['Links'] as List).cast<String>();
    oomScoreAdj = json['OomScoreAdj'];
    pidMode = json['PidMode'];
    privileged = json['Privileged'];
    publishAllPorts = json['PublishAllPorts'];
    readonlyRootfs = json['ReadonlyRootfs'];
    securityOpt = (json['SecurityOpt'] == null) ?
      null :
      (json['SecurityOpt'] as List).cast<String>();
    storageOpt = (json['StorageOpt'] == null) ?
      null :
      (json['StorageOpt'] as Map).cast<String, String>();
    tmpfs = (json['Tmpfs'] == null) ?
      null :
      (json['Tmpfs'] as Map).cast<String, String>();
    uTSMode = json['UTSMode'];
    usernsMode = json['UsernsMode'];
    shmSize = json['ShmSize'];
    sysctls = (json['Sysctls'] == null) ?
      null :
      (json['Sysctls'] as Map).cast<String, String>();
    runtime = json['Runtime'];
    consoleSize = (json['ConsoleSize'] == null) ?
      null :
      (json['ConsoleSize'] as List).cast<int>();
    isolation = json['Isolation'];
    maskedPaths = (json['MaskedPaths'] == null) ?
      null :
      (json['MaskedPaths'] as List).cast<String>();
    readonlyPaths = (json['ReadonlyPaths'] == null) ?
      null :
      (json['ReadonlyPaths'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cpuShares != null)
      json['CpuShares'] = cpuShares;
    if (memory != null)
      json['Memory'] = memory;
    if (cgroupParent != null)
      json['CgroupParent'] = cgroupParent;
    if (blkioWeight != null)
      json['BlkioWeight'] = blkioWeight;
    if (blkioWeightDevice != null)
      json['BlkioWeightDevice'] = blkioWeightDevice;
    if (blkioDeviceReadBps != null)
      json['BlkioDeviceReadBps'] = blkioDeviceReadBps;
    if (blkioDeviceWriteBps != null)
      json['BlkioDeviceWriteBps'] = blkioDeviceWriteBps;
    if (blkioDeviceReadIOps != null)
      json['BlkioDeviceReadIOps'] = blkioDeviceReadIOps;
    if (blkioDeviceWriteIOps != null)
      json['BlkioDeviceWriteIOps'] = blkioDeviceWriteIOps;
    if (cpuPeriod != null)
      json['CpuPeriod'] = cpuPeriod;
    if (cpuQuota != null)
      json['CpuQuota'] = cpuQuota;
    if (cpuRealtimePeriod != null)
      json['CpuRealtimePeriod'] = cpuRealtimePeriod;
    if (cpuRealtimeRuntime != null)
      json['CpuRealtimeRuntime'] = cpuRealtimeRuntime;
    if (cpusetCpus != null)
      json['CpusetCpus'] = cpusetCpus;
    if (cpusetMems != null)
      json['CpusetMems'] = cpusetMems;
    if (devices != null)
      json['Devices'] = devices;
    if (deviceCgroupRules != null)
      json['DeviceCgroupRules'] = deviceCgroupRules;
    if (deviceRequests != null)
      json['DeviceRequests'] = deviceRequests;
    if (kernelMemory != null)
      json['KernelMemory'] = kernelMemory;
    if (kernelMemoryTCP != null)
      json['KernelMemoryTCP'] = kernelMemoryTCP;
    if (memoryReservation != null)
      json['MemoryReservation'] = memoryReservation;
    if (memorySwap != null)
      json['MemorySwap'] = memorySwap;
    if (memorySwappiness != null)
      json['MemorySwappiness'] = memorySwappiness;
    if (nanoCPUs != null)
      json['NanoCPUs'] = nanoCPUs;
    if (oomKillDisable != null)
      json['OomKillDisable'] = oomKillDisable;
      json['Init'] = init;
      json['PidsLimit'] = pidsLimit;
    if (ulimits != null)
      json['Ulimits'] = ulimits;
    if (cpuCount != null)
      json['CpuCount'] = cpuCount;
    if (cpuPercent != null)
      json['CpuPercent'] = cpuPercent;
    if (iOMaximumIOps != null)
      json['IOMaximumIOps'] = iOMaximumIOps;
    if (iOMaximumBandwidth != null)
      json['IOMaximumBandwidth'] = iOMaximumBandwidth;
    if (binds != null)
      json['Binds'] = binds;
    if (containerIDFile != null)
      json['ContainerIDFile'] = containerIDFile;
    if (logConfig != null)
      json['LogConfig'] = logConfig;
    if (networkMode != null)
      json['NetworkMode'] = networkMode;
    if (portBindings != null)
      json['PortBindings'] = portBindings;
    if (restartPolicy != null)
      json['RestartPolicy'] = restartPolicy;
    if (autoRemove != null)
      json['AutoRemove'] = autoRemove;
    if (volumeDriver != null)
      json['VolumeDriver'] = volumeDriver;
    if (volumesFrom != null)
      json['VolumesFrom'] = volumesFrom;
    if (mounts != null)
      json['Mounts'] = mounts;
    if (capabilities != null)
      json['Capabilities'] = capabilities;
    if (capAdd != null)
      json['CapAdd'] = capAdd;
    if (capDrop != null)
      json['CapDrop'] = capDrop;
    if (dns != null)
      json['Dns'] = dns;
    if (dnsOptions != null)
      json['DnsOptions'] = dnsOptions;
    if (dnsSearch != null)
      json['DnsSearch'] = dnsSearch;
    if (extraHosts != null)
      json['ExtraHosts'] = extraHosts;
    if (groupAdd != null)
      json['GroupAdd'] = groupAdd;
    if (ipcMode != null)
      json['IpcMode'] = ipcMode;
    if (cgroup != null)
      json['Cgroup'] = cgroup;
    if (links != null)
      json['Links'] = links;
    if (oomScoreAdj != null)
      json['OomScoreAdj'] = oomScoreAdj;
    if (pidMode != null)
      json['PidMode'] = pidMode;
    if (privileged != null)
      json['Privileged'] = privileged;
    if (publishAllPorts != null)
      json['PublishAllPorts'] = publishAllPorts;
    if (readonlyRootfs != null)
      json['ReadonlyRootfs'] = readonlyRootfs;
    if (securityOpt != null)
      json['SecurityOpt'] = securityOpt;
    if (storageOpt != null)
      json['StorageOpt'] = storageOpt;
    if (tmpfs != null)
      json['Tmpfs'] = tmpfs;
    if (uTSMode != null)
      json['UTSMode'] = uTSMode;
    if (usernsMode != null)
      json['UsernsMode'] = usernsMode;
    if (shmSize != null)
      json['ShmSize'] = shmSize;
    if (sysctls != null)
      json['Sysctls'] = sysctls;
    if (runtime != null)
      json['Runtime'] = runtime;
    if (consoleSize != null)
      json['ConsoleSize'] = consoleSize;
    if (isolation != null)
      json['Isolation'] = isolation;
    if (maskedPaths != null)
      json['MaskedPaths'] = maskedPaths;
    if (readonlyPaths != null)
      json['ReadonlyPaths'] = readonlyPaths;
    return json;
  }

  static List<HostConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<HostConfig>() : json.map((value) => HostConfig.fromJson(value)).toList();
  }

  static Map<String, HostConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HostConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HostConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HostConfig-objects as value to a dart map
  static Map<String, List<HostConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HostConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HostConfig.listFromJson(value);
       });
     }
     return map;
  }
}

