# openapi.model.TaskSpecContainerSpec

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **String** | The image name to use for the container | [optional] [default to null]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value data. | [optional] [default to {}]
**command** | **List&lt;String&gt;** | The command to be run in the image. | [optional] [default to []]
**args** | **List&lt;String&gt;** | Arguments to the command. | [optional] [default to []]
**hostname** | **String** | The hostname to use for the container, as a valid [RFC 1123](https://tools.ietf.org/html/rfc1123) hostname.  | [optional] [default to null]
**env** | **List&lt;String&gt;** | A list of environment variables in the form &#x60;VAR&#x3D;value&#x60;.  | [optional] [default to []]
**dir** | **String** | The working directory for commands to run in. | [optional] [default to null]
**user** | **String** | The user inside the container. | [optional] [default to null]
**groups** | **List&lt;String&gt;** | A list of additional groups that the container process will run as.  | [optional] [default to []]
**privileges** | [**TaskSpecContainerSpecPrivileges**](TaskSpecContainerSpecPrivileges.md) |  | [optional] [default to null]
**TTY** | **bool** | Whether a pseudo-TTY should be allocated. | [optional] [default to null]
**openStdin** | **bool** | Open &#x60;stdin&#x60; | [optional] [default to null]
**readOnly** | **bool** | Mount the container&#39;s root filesystem as read only. | [optional] [default to null]
**mounts** | [**List&lt;Mount&gt;**](Mount.md) | Specification for mounts to be added to containers created as part of the service.  | [optional] [default to []]
**stopSignal** | **String** | Signal to stop the container. | [optional] [default to null]
**stopGracePeriod** | **int** | Amount of time to wait for the container to terminate before forcefully killing it.  | [optional] [default to null]
**healthCheck** | [**HealthConfig**](HealthConfig.md) |  | [optional] [default to null]
**hosts** | **List&lt;String&gt;** | A list of hostname/IP mappings to add to the container&#39;s &#x60;hosts&#x60; file. The format of extra hosts is specified in the [hosts(5)](http://man7.org/linux/man-pages/man5/hosts.5.html) man page:      IP_address canonical_hostname [aliases...]  | [optional] [default to []]
**dNSConfig** | [**TaskSpecContainerSpecDNSConfig**](TaskSpecContainerSpecDNSConfig.md) |  | [optional] [default to null]
**secrets** | [**List&lt;TaskSpecContainerSpecSecrets&gt;**](TaskSpecContainerSpecSecrets.md) | Secrets contains references to zero or more secrets that will be exposed to the service.  | [optional] [default to []]
**configs** | [**List&lt;TaskSpecContainerSpecConfigs&gt;**](TaskSpecContainerSpecConfigs.md) | Configs contains references to zero or more configs that will be exposed to the service.  | [optional] [default to []]
**isolation** | **String** | Isolation technology of the containers running the service. (Windows only)  | [optional] [default to null]
**init** | **bool** | Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used.  | [optional] [default to null]
**sysctls** | **Map&lt;String, String&gt;** | Set kernel namedspaced parameters (sysctls) in the container. The Sysctls option on services accepts the same sysctls as the are supported on containers. Note that while the same sysctls are supported, no guarantees or checks are made about their suitability for a clustered environment, and it&#39;s up to the user to determine whether a given sysctl will work properly in a Service.  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


