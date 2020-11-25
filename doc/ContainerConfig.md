# openapi.model.ContainerConfig

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | The hostname to use for the container, as a valid RFC 1123 hostname. | [optional] [default to null]
**domainname** | **String** | The domain name to use for the container. | [optional] [default to null]
**user** | **String** | The user that commands are run as inside the container. | [optional] [default to null]
**attachStdin** | **bool** | Whether to attach to &#x60;stdin&#x60;. | [optional] [default to false]
**attachStdout** | **bool** | Whether to attach to &#x60;stdout&#x60;. | [optional] [default to true]
**attachStderr** | **bool** | Whether to attach to &#x60;stderr&#x60;. | [optional] [default to true]
**exposedPorts** | [**Map&lt;String, Object&gt;**](Object.md) | An object mapping ports to an empty object in the form:  &#x60;{\&quot;&lt;port&gt;/&lt;tcp|udp|sctp&gt;\&quot;: {}}&#x60;  | [optional] [default to {}]
**tty** | **bool** | Attach standard streams to a TTY, including &#x60;stdin&#x60; if it is not closed.  | [optional] [default to false]
**openStdin** | **bool** | Open &#x60;stdin&#x60; | [optional] [default to false]
**stdinOnce** | **bool** | Close &#x60;stdin&#x60; after one attached client disconnects | [optional] [default to false]
**env** | **List&lt;String&gt;** | A list of environment variables to set inside the container in the form &#x60;[\&quot;VAR&#x3D;value\&quot;, ...]&#x60;. A variable without &#x60;&#x3D;&#x60; is removed from the environment, rather than to have an empty value.  | [optional] [default to []]
**cmd** | **List&lt;String&gt;** | Command to run specified as a string or an array of strings.  | [optional] [default to []]
**healthcheck** | [**HealthConfig**](HealthConfig.md) |  | [optional] [default to null]
**argsEscaped** | **bool** | Command is already escaped (Windows only) | [optional] [default to null]
**image** | **String** | The name of the image to use when creating the container/  | [optional] [default to null]
**volumes** | [**Map&lt;String, Object&gt;**](Object.md) | An object mapping mount point paths inside the container to empty objects.  | [optional] [default to {}]
**workingDir** | **String** | The working directory for commands to run in. | [optional] [default to null]
**entrypoint** | **List&lt;String&gt;** | The entry point for the container as a string or an array of strings.  If the array consists of exactly one empty string (&#x60;[\&quot;\&quot;]&#x60;) then the entry point is reset to system default (i.e., the entry point used by docker when there is no &#x60;ENTRYPOINT&#x60; instruction in the &#x60;Dockerfile&#x60;).  | [optional] [default to []]
**networkDisabled** | **bool** | Disable networking for the container. | [optional] [default to null]
**macAddress** | **String** | MAC address of the container. | [optional] [default to null]
**onBuild** | **List&lt;String&gt;** | &#x60;ONBUILD&#x60; metadata that were defined in the image&#39;s &#x60;Dockerfile&#x60;.  | [optional] [default to []]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]
**stopSignal** | **String** | Signal to stop a container as a string or unsigned integer.  | [optional] [default to &quot;SIGTERM&quot;]
**stopTimeout** | **int** | Timeout to stop a container in seconds. | [optional] [default to null]
**shell** | **List&lt;String&gt;** | Shell for when &#x60;RUN&#x60;, &#x60;CMD&#x60;, and &#x60;ENTRYPOINT&#x60; uses a shell.  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


