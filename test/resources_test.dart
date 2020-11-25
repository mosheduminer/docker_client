import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for Resources
void main() {
    var instance = new Resources();

  group('test Resources', () {
    // An integer value representing this container's relative CPU weight versus other containers. 
    // int cpuShares (default value: null)
    test('to test the property `cpuShares`', () async {
      // TODO
    });

    // Memory limit in bytes.
    // int memory (default value: 0)
    test('to test the property `memory`', () async {
      // TODO
    });

    // Path to `cgroups` under which the container's `cgroup` is created. If the path is not absolute, the path is considered to be relative to the `cgroups` path of the init process. Cgroups are created if they do not already exist. 
    // String cgroupParent (default value: null)
    test('to test the property `cgroupParent`', () async {
      // TODO
    });

    // Block IO weight (relative weight).
    // int blkioWeight (default value: null)
    test('to test the property `blkioWeight`', () async {
      // TODO
    });

    // Block IO weight (relative device weight) in the form:  ``` [{\"Path\": \"device_path\", \"Weight\": weight}] ``` 
    // List<ResourcesBlkioWeightDevice> blkioWeightDevice (default value: [])
    test('to test the property `blkioWeightDevice`', () async {
      // TODO
    });

    // Limit read rate (bytes per second) from a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ``` 
    // List<ThrottleDevice> blkioDeviceReadBps (default value: [])
    test('to test the property `blkioDeviceReadBps`', () async {
      // TODO
    });

    // Limit write rate (bytes per second) to a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ``` 
    // List<ThrottleDevice> blkioDeviceWriteBps (default value: [])
    test('to test the property `blkioDeviceWriteBps`', () async {
      // TODO
    });

    // Limit read rate (IO per second) from a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ``` 
    // List<ThrottleDevice> blkioDeviceReadIOps (default value: [])
    test('to test the property `blkioDeviceReadIOps`', () async {
      // TODO
    });

    // Limit write rate (IO per second) to a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ``` 
    // List<ThrottleDevice> blkioDeviceWriteIOps (default value: [])
    test('to test the property `blkioDeviceWriteIOps`', () async {
      // TODO
    });

    // The length of a CPU period in microseconds.
    // int cpuPeriod (default value: null)
    test('to test the property `cpuPeriod`', () async {
      // TODO
    });

    // Microseconds of CPU time that the container can get in a CPU period. 
    // int cpuQuota (default value: null)
    test('to test the property `cpuQuota`', () async {
      // TODO
    });

    // The length of a CPU real-time period in microseconds. Set to 0 to allocate no time allocated to real-time tasks. 
    // int cpuRealtimePeriod (default value: null)
    test('to test the property `cpuRealtimePeriod`', () async {
      // TODO
    });

    // The length of a CPU real-time runtime in microseconds. Set to 0 to allocate no time allocated to real-time tasks. 
    // int cpuRealtimeRuntime (default value: null)
    test('to test the property `cpuRealtimeRuntime`', () async {
      // TODO
    });

    // CPUs in which to allow execution (e.g., `0-3`, `0,1`). 
    // String cpusetCpus (default value: null)
    test('to test the property `cpusetCpus`', () async {
      // TODO
    });

    // Memory nodes (MEMs) in which to allow execution (0-3, 0,1). Only effective on NUMA systems. 
    // String cpusetMems (default value: null)
    test('to test the property `cpusetMems`', () async {
      // TODO
    });

    // A list of devices to add to the container.
    // List<DeviceMapping> devices (default value: [])
    test('to test the property `devices`', () async {
      // TODO
    });

    // a list of cgroup rules to apply to the container
    // List<String> deviceCgroupRules (default value: [])
    test('to test the property `deviceCgroupRules`', () async {
      // TODO
    });

    // A list of requests for devices to be sent to device drivers. 
    // List<DeviceRequest> deviceRequests (default value: [])
    test('to test the property `deviceRequests`', () async {
      // TODO
    });

    // Kernel memory limit in bytes.
    // int kernelMemory (default value: null)
    test('to test the property `kernelMemory`', () async {
      // TODO
    });

    // Hard limit for kernel TCP buffer memory (in bytes).
    // int kernelMemoryTCP (default value: null)
    test('to test the property `kernelMemoryTCP`', () async {
      // TODO
    });

    // Memory soft limit in bytes.
    // int memoryReservation (default value: null)
    test('to test the property `memoryReservation`', () async {
      // TODO
    });

    // Total memory limit (memory + swap). Set as `-1` to enable unlimited swap. 
    // int memorySwap (default value: null)
    test('to test the property `memorySwap`', () async {
      // TODO
    });

    // Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100. 
    // int memorySwappiness (default value: null)
    test('to test the property `memorySwappiness`', () async {
      // TODO
    });

    // CPU quota in units of 10<sup>-9</sup> CPUs.
    // int nanoCPUs (default value: null)
    test('to test the property `nanoCPUs`', () async {
      // TODO
    });

    // Disable OOM Killer for the container.
    // bool oomKillDisable (default value: null)
    test('to test the property `oomKillDisable`', () async {
      // TODO
    });

    // Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used. 
    // bool init (default value: null)
    test('to test the property `init`', () async {
      // TODO
    });

    // Tune a container's PIDs limit. Set `0` or `-1` for unlimited, or `null` to not change. 
    // int pidsLimit (default value: null)
    test('to test the property `pidsLimit`', () async {
      // TODO
    });

    // A list of resource limits to set in the container. For example:  ``` {\"Name\": \"nofile\", \"Soft\": 1024, \"Hard\": 2048} ``` 
    // List<ResourcesUlimits> ulimits (default value: [])
    test('to test the property `ulimits`', () async {
      // TODO
    });

    // The number of usable CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is `CPUCount` first, then `CPUShares`, and `CPUPercent` last. 
    // int cpuCount (default value: null)
    test('to test the property `cpuCount`', () async {
      // TODO
    });

    // The usable percentage of the available CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is `CPUCount` first, then `CPUShares`, and `CPUPercent` last. 
    // int cpuPercent (default value: null)
    test('to test the property `cpuPercent`', () async {
      // TODO
    });

    // Maximum IOps for the container system drive (Windows only)
    // int iOMaximumIOps (default value: null)
    test('to test the property `iOMaximumIOps`', () async {
      // TODO
    });

    // Maximum IO in bytes per second for the container system drive (Windows only). 
    // int iOMaximumBandwidth (default value: null)
    test('to test the property `iOMaximumBandwidth`', () async {
      // TODO
    });


  });

}
