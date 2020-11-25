# openapi.model.Resources

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpuShares** | **int** | An integer value representing this container&#39;s relative CPU weight versus other containers.  | [optional] [default to null]
**memory** | **int** | Memory limit in bytes. | [optional] [default to 0]
**cgroupParent** | **String** | Path to &#x60;cgroups&#x60; under which the container&#39;s &#x60;cgroup&#x60; is created. If the path is not absolute, the path is considered to be relative to the &#x60;cgroups&#x60; path of the init process. Cgroups are created if they do not already exist.  | [optional] [default to null]
**blkioWeight** | **int** | Block IO weight (relative weight). | [optional] [default to null]
**blkioWeightDevice** | [**List&lt;ResourcesBlkioWeightDevice&gt;**](ResourcesBlkioWeightDevice.md) | Block IO weight (relative device weight) in the form:  &#x60;&#x60;&#x60; [{\&quot;Path\&quot;: \&quot;device_path\&quot;, \&quot;Weight\&quot;: weight}] &#x60;&#x60;&#x60;  | [optional] [default to []]
**blkioDeviceReadBps** | [**List&lt;ThrottleDevice&gt;**](ThrottleDevice.md) | Limit read rate (bytes per second) from a device, in the form:  &#x60;&#x60;&#x60; [{\&quot;Path\&quot;: \&quot;device_path\&quot;, \&quot;Rate\&quot;: rate}] &#x60;&#x60;&#x60;  | [optional] [default to []]
**blkioDeviceWriteBps** | [**List&lt;ThrottleDevice&gt;**](ThrottleDevice.md) | Limit write rate (bytes per second) to a device, in the form:  &#x60;&#x60;&#x60; [{\&quot;Path\&quot;: \&quot;device_path\&quot;, \&quot;Rate\&quot;: rate}] &#x60;&#x60;&#x60;  | [optional] [default to []]
**blkioDeviceReadIOps** | [**List&lt;ThrottleDevice&gt;**](ThrottleDevice.md) | Limit read rate (IO per second) from a device, in the form:  &#x60;&#x60;&#x60; [{\&quot;Path\&quot;: \&quot;device_path\&quot;, \&quot;Rate\&quot;: rate}] &#x60;&#x60;&#x60;  | [optional] [default to []]
**blkioDeviceWriteIOps** | [**List&lt;ThrottleDevice&gt;**](ThrottleDevice.md) | Limit write rate (IO per second) to a device, in the form:  &#x60;&#x60;&#x60; [{\&quot;Path\&quot;: \&quot;device_path\&quot;, \&quot;Rate\&quot;: rate}] &#x60;&#x60;&#x60;  | [optional] [default to []]
**cpuPeriod** | **int** | The length of a CPU period in microseconds. | [optional] [default to null]
**cpuQuota** | **int** | Microseconds of CPU time that the container can get in a CPU period.  | [optional] [default to null]
**cpuRealtimePeriod** | **int** | The length of a CPU real-time period in microseconds. Set to 0 to allocate no time allocated to real-time tasks.  | [optional] [default to null]
**cpuRealtimeRuntime** | **int** | The length of a CPU real-time runtime in microseconds. Set to 0 to allocate no time allocated to real-time tasks.  | [optional] [default to null]
**cpusetCpus** | **String** | CPUs in which to allow execution (e.g., &#x60;0-3&#x60;, &#x60;0,1&#x60;).  | [optional] [default to null]
**cpusetMems** | **String** | Memory nodes (MEMs) in which to allow execution (0-3, 0,1). Only effective on NUMA systems.  | [optional] [default to null]
**devices** | [**List&lt;DeviceMapping&gt;**](DeviceMapping.md) | A list of devices to add to the container. | [optional] [default to []]
**deviceCgroupRules** | **List&lt;String&gt;** | a list of cgroup rules to apply to the container | [optional] [default to []]
**deviceRequests** | [**List&lt;DeviceRequest&gt;**](DeviceRequest.md) | A list of requests for devices to be sent to device drivers.  | [optional] [default to []]
**kernelMemory** | **int** | Kernel memory limit in bytes. | [optional] [default to null]
**kernelMemoryTCP** | **int** | Hard limit for kernel TCP buffer memory (in bytes). | [optional] [default to null]
**memoryReservation** | **int** | Memory soft limit in bytes. | [optional] [default to null]
**memorySwap** | **int** | Total memory limit (memory + swap). Set as &#x60;-1&#x60; to enable unlimited swap.  | [optional] [default to null]
**memorySwappiness** | **int** | Tune a container&#39;s memory swappiness behavior. Accepts an integer between 0 and 100.  | [optional] [default to null]
**nanoCPUs** | **int** | CPU quota in units of 10&lt;sup&gt;-9&lt;/sup&gt; CPUs. | [optional] [default to null]
**oomKillDisable** | **bool** | Disable OOM Killer for the container. | [optional] [default to null]
**init** | **bool** | Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used.  | [optional] [default to null]
**pidsLimit** | **int** | Tune a container&#39;s PIDs limit. Set &#x60;0&#x60; or &#x60;-1&#x60; for unlimited, or &#x60;null&#x60; to not change.  | [optional] [default to null]
**ulimits** | [**List&lt;ResourcesUlimits&gt;**](ResourcesUlimits.md) | A list of resource limits to set in the container. For example:  &#x60;&#x60;&#x60; {\&quot;Name\&quot;: \&quot;nofile\&quot;, \&quot;Soft\&quot;: 1024, \&quot;Hard\&quot;: 2048} &#x60;&#x60;&#x60;  | [optional] [default to []]
**cpuCount** | **int** | The number of usable CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is &#x60;CPUCount&#x60; first, then &#x60;CPUShares&#x60;, and &#x60;CPUPercent&#x60; last.  | [optional] [default to null]
**cpuPercent** | **int** | The usable percentage of the available CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is &#x60;CPUCount&#x60; first, then &#x60;CPUShares&#x60;, and &#x60;CPUPercent&#x60; last.  | [optional] [default to null]
**iOMaximumIOps** | **int** | Maximum IOps for the container system drive (Windows only) | [optional] [default to null]
**iOMaximumBandwidth** | **int** | Maximum IO in bytes per second for the container system drive (Windows only).  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


