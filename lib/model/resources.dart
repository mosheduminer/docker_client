part of docker_client.api;

class Resources {
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
  Resources();

  @override
  String toString() {
    return 'Resources[cpuShares=$cpuShares, memory=$memory, cgroupParent=$cgroupParent, blkioWeight=$blkioWeight, blkioWeightDevice=$blkioWeightDevice, blkioDeviceReadBps=$blkioDeviceReadBps, blkioDeviceWriteBps=$blkioDeviceWriteBps, blkioDeviceReadIOps=$blkioDeviceReadIOps, blkioDeviceWriteIOps=$blkioDeviceWriteIOps, cpuPeriod=$cpuPeriod, cpuQuota=$cpuQuota, cpuRealtimePeriod=$cpuRealtimePeriod, cpuRealtimeRuntime=$cpuRealtimeRuntime, cpusetCpus=$cpusetCpus, cpusetMems=$cpusetMems, devices=$devices, deviceCgroupRules=$deviceCgroupRules, deviceRequests=$deviceRequests, kernelMemory=$kernelMemory, kernelMemoryTCP=$kernelMemoryTCP, memoryReservation=$memoryReservation, memorySwap=$memorySwap, memorySwappiness=$memorySwappiness, nanoCPUs=$nanoCPUs, oomKillDisable=$oomKillDisable, init=$init, pidsLimit=$pidsLimit, ulimits=$ulimits, cpuCount=$cpuCount, cpuPercent=$cpuPercent, iOMaximumIOps=$iOMaximumIOps, iOMaximumBandwidth=$iOMaximumBandwidth, ]';
  }

  Resources.fromJson(Map<String, dynamic> json) {
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
    return json;
  }

  static List<Resources> listFromJson(List<dynamic> json) {
    return json == null ? List<Resources>() : json.map((value) => Resources.fromJson(value)).toList();
  }

  static Map<String, Resources> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Resources>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Resources.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Resources-objects as value to a dart map
  static Map<String, List<Resources>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Resources>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Resources.listFromJson(value);
       });
     }
     return map;
  }
}

