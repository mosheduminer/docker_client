# openapi.api.ContainerApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**containerArchive**](ContainerApi.md#containerArchive) | **GET** /containers/{id}/archive | Get an archive of a filesystem resource in a container
[**containerArchiveInfo**](ContainerApi.md#containerArchiveInfo) | **HEAD** /containers/{id}/archive | Get information about files in a container
[**containerAttach**](ContainerApi.md#containerAttach) | **POST** /containers/{id}/attach | Attach to a container
[**containerAttachWebsocket**](ContainerApi.md#containerAttachWebsocket) | **GET** /containers/{id}/attach/ws | Attach to a container via a websocket
[**containerChanges**](ContainerApi.md#containerChanges) | **GET** /containers/{id}/changes | Get changes on a container’s filesystem
[**containerCreate**](ContainerApi.md#containerCreate) | **POST** /containers/create | Create a container
[**containerDelete**](ContainerApi.md#containerDelete) | **DELETE** /containers/{id} | Remove a container
[**containerExport**](ContainerApi.md#containerExport) | **GET** /containers/{id}/export | Export a container
[**containerInspect**](ContainerApi.md#containerInspect) | **GET** /containers/{id}/json | Inspect a container
[**containerKill**](ContainerApi.md#containerKill) | **POST** /containers/{id}/kill | Kill a container
[**containerList**](ContainerApi.md#containerList) | **GET** /containers/json | List containers
[**containerLogs**](ContainerApi.md#containerLogs) | **GET** /containers/{id}/logs | Get container logs
[**containerPause**](ContainerApi.md#containerPause) | **POST** /containers/{id}/pause | Pause a container
[**containerPrune**](ContainerApi.md#containerPrune) | **POST** /containers/prune | Delete stopped containers
[**containerRename**](ContainerApi.md#containerRename) | **POST** /containers/{id}/rename | Rename a container
[**containerResize**](ContainerApi.md#containerResize) | **POST** /containers/{id}/resize | Resize a container TTY
[**containerRestart**](ContainerApi.md#containerRestart) | **POST** /containers/{id}/restart | Restart a container
[**containerStart**](ContainerApi.md#containerStart) | **POST** /containers/{id}/start | Start a container
[**containerStats**](ContainerApi.md#containerStats) | **GET** /containers/{id}/stats | Get container stats based on resource usage
[**containerStop**](ContainerApi.md#containerStop) | **POST** /containers/{id}/stop | Stop a container
[**containerTop**](ContainerApi.md#containerTop) | **GET** /containers/{id}/top | List processes running inside a container
[**containerUnpause**](ContainerApi.md#containerUnpause) | **POST** /containers/{id}/unpause | Unpause a container
[**containerUpdate**](ContainerApi.md#containerUpdate) | **POST** /containers/{id}/update | Update a container
[**containerWait**](ContainerApi.md#containerWait) | **POST** /containers/{id}/wait | Wait for a container
[**putContainerArchive**](ContainerApi.md#putContainerArchive) | **PUT** /containers/{id}/archive | Extract an archive of files or folders to a directory in a container


# **containerArchive**
> containerArchive(id, path)

Get an archive of a filesystem resource in a container

Get a tar archive of a resource in the filesystem of container id.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var path = path_example; // String | Resource in the container’s filesystem to archive.

try { 
    api_instance.containerArchive(id, path);
} catch (e) {
    print("Exception when calling ContainerApi->containerArchive: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **path** | **String**| Resource in the container’s filesystem to archive. | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-tar, application/json, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerArchiveInfo**
> containerArchiveInfo(id, path)

Get information about files in a container

A response header `X-Docker-Container-Path-Stat` is returned, containing a base64 - encoded JSON object with some filesystem header information about the path. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var path = path_example; // String | Resource in the container’s filesystem to archive.

try { 
    api_instance.containerArchiveInfo(id, path);
} catch (e) {
    print("Exception when calling ContainerApi->containerArchiveInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **path** | **String**| Resource in the container’s filesystem to archive. | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerAttach**
> containerAttach(id, detachKeys, logs, stream, stdin, stdout, stderr)

Attach to a container

Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the `stream` or `logs` parameter must be `true` for this endpoint to do anything.  See the [documentation for the `docker attach` command](https://docs.docker.com/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport `stdin`, `stdout`, and `stderr` on the same socket.  This is the response from the daemon for an attach request:  ``` HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] ```  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  ``` POST /containers/16253994b7c4/attach?stream=1&stdout=1 HTTP/1.1 Upgrade: tcp Connection: Upgrade ```  The Docker daemon will respond with a `101 UPGRADED` response, and will similarly follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] ```  ### Stream format  When the TTY setting is disabled in [`POST /containers/create`](#operation/ContainerCreate), the stream over the hijacked connected is multiplexed to separate out `stdout` and `stderr`. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (`stdout` or `stderr`). It also contains the size of the associated frame encoded in the last four bytes (`uint32`).  It is encoded on the first eight bytes like this:  ```go header := [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} ```  `STREAM_TYPE` can be:  - 0: `stdin` (is written on `stdout`) - 1: `stdout` - 2: `stderr`  `SIZE1, SIZE2, SIZE3, SIZE4` are the four bytes of the `uint32` size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of `STREAM_TYPE`.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose `stdout` or `stderr` depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [`POST /containers/create`](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client's `stdin`. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var detachKeys = detachKeys_example; // String | Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`. 
var logs = true; // bool | Replay previous logs from the container.  This is useful for attaching to a container that has started and you want to output everything since the container started.  If `stream` is also enabled, once all the previous output has been returned, it will seamlessly transition into streaming current output. 
var stream = true; // bool | Stream attached streams from the time the request was made onwards. 
var stdin = true; // bool | Attach to `stdin`
var stdout = true; // bool | Attach to `stdout`
var stderr = true; // bool | Attach to `stderr`

try { 
    api_instance.containerAttach(id, detachKeys, logs, stream, stdin, stdout, stderr);
} catch (e) {
    print("Exception when calling ContainerApi->containerAttach: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **detachKeys** | **String**| Override the key sequence for detaching a container.Format is a single character &#x60;[a-Z]&#x60; or &#x60;ctrl-&lt;value&gt;&#x60; where &#x60;&lt;value&gt;&#x60; is one of: &#x60;a-z&#x60;, &#x60;@&#x60;, &#x60;^&#x60;, &#x60;[&#x60;, &#x60;,&#x60; or &#x60;_&#x60;.  | [optional] [default to null]
 **logs** | **bool**| Replay previous logs from the container.  This is useful for attaching to a container that has started and you want to output everything since the container started.  If &#x60;stream&#x60; is also enabled, once all the previous output has been returned, it will seamlessly transition into streaming current output.  | [optional] [default to false]
 **stream** | **bool**| Stream attached streams from the time the request was made onwards.  | [optional] [default to false]
 **stdin** | **bool**| Attach to &#x60;stdin&#x60; | [optional] [default to false]
 **stdout** | **bool**| Attach to &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **bool**| Attach to &#x60;stderr&#x60; | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.docker.raw-stream, application/json, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerAttachWebsocket**
> containerAttachWebsocket(id, detachKeys, logs, stream, stdin, stdout, stderr)

Attach to a container via a websocket

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var detachKeys = detachKeys_example; // String | Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,`, or `_`. 
var logs = true; // bool | Return logs
var stream = true; // bool | Return stream
var stdin = true; // bool | Attach to `stdin`
var stdout = true; // bool | Attach to `stdout`
var stderr = true; // bool | Attach to `stderr`

try { 
    api_instance.containerAttachWebsocket(id, detachKeys, logs, stream, stdin, stdout, stderr);
} catch (e) {
    print("Exception when calling ContainerApi->containerAttachWebsocket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **detachKeys** | **String**| Override the key sequence for detaching a container.Format is a single character &#x60;[a-Z]&#x60; or &#x60;ctrl-&lt;value&gt;&#x60; where &#x60;&lt;value&gt;&#x60; is one of: &#x60;a-z&#x60;, &#x60;@&#x60;, &#x60;^&#x60;, &#x60;[&#x60;, &#x60;,&#x60;, or &#x60;_&#x60;.  | [optional] [default to null]
 **logs** | **bool**| Return logs | [optional] [default to false]
 **stream** | **bool**| Return stream | [optional] [default to false]
 **stdin** | **bool**| Attach to &#x60;stdin&#x60; | [optional] [default to false]
 **stdout** | **bool**| Attach to &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **bool**| Attach to &#x60;stderr&#x60; | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerChanges**
> List<ContainerChangeResponseItem> containerChanges(id)

Get changes on a container’s filesystem

Returns which files in a container's filesystem have been added, deleted, or modified. The `Kind` of modification can be one of:  - `0`: Modified - `1`: Added - `2`: Deleted 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container

try { 
    var result = api_instance.containerChanges(id);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerChanges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]

### Return type

[**List<ContainerChangeResponseItem>**](ContainerChangeResponseItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerCreate**
> ContainerCreateResponse containerCreate(body, name)

Create a container

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var body = ContainerConfig(); // Object | Container to create
var name = name_example; // String | Assign the specified name to the container. Must match `/?[a-zA-Z0-9][a-zA-Z0-9_.-]+`. 

try { 
    var result = api_instance.containerCreate(body, name);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ContainerConfig**](ContainerConfig.md)| Container to create | 
 **name** | **String**| Assign the specified name to the container. Must match &#x60;/?[a-zA-Z0-9][a-zA-Z0-9_.-]+&#x60;.  | [optional] [default to null]

### Return type

[**ContainerCreateResponse**](ContainerCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerDelete**
> containerDelete(id, v, force, link)

Remove a container

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var v = true; // bool | Remove the volumes associated with the container.
var force = true; // bool | If the container is running, kill it before removing it.
var link = true; // bool | Remove the specified link associated with the container.

try { 
    api_instance.containerDelete(id, v, force, link);
} catch (e) {
    print("Exception when calling ContainerApi->containerDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **v** | **bool**| Remove the volumes associated with the container. | [optional] [default to false]
 **force** | **bool**| If the container is running, kill it before removing it. | [optional] [default to false]
 **link** | **bool**| Remove the specified link associated with the container. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerExport**
> containerExport(id)

Export a container

Export the contents of a container as a tarball.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container

try { 
    api_instance.containerExport(id);
} catch (e) {
    print("Exception when calling ContainerApi->containerExport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerInspect**
> ContainerInspectResponse containerInspect(id, size)

Inspect a container

Return low-level information about a container.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var size = true; // bool | Return the size of container as fields `SizeRw` and `SizeRootFs`

try { 
    var result = api_instance.containerInspect(id, size);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **size** | **bool**| Return the size of container as fields &#x60;SizeRw&#x60; and &#x60;SizeRootFs&#x60; | [optional] [default to false]

### Return type

[**ContainerInspectResponse**](ContainerInspectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerKill**
> containerKill(id, signal)

Kill a container

Send a POSIX signal to a container, defaulting to killing to the container. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var signal = signal_example; // String | Signal to send to the container as an integer or string (e.g. `SIGINT`)

try { 
    api_instance.containerKill(id, signal);
} catch (e) {
    print("Exception when calling ContainerApi->containerKill: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **signal** | **String**| Signal to send to the container as an integer or string (e.g. &#x60;SIGINT&#x60;) | [optional] [default to &quot;SIGKILL&quot;]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerList**
> List<Object> containerList(all, limit, size, filters)

List containers

Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated . 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var all = true; // bool | Return all containers. By default, only running containers are shown. 
var limit = 56; // int | Return this number of most recently created containers, including non-running ones. 
var size = true; // bool | Return the size of container as fields `SizeRw` and `SizeRootFs`. 
var filters = filters_example; // String | Filters to process on the container list, encoded as JSON (a `map[string][]string`). For example, `{\"status\": [\"paused\"]}` will only return paused containers.  Available filters:  - `ancestor`=(`<image-name>[:<tag>]`, `<image id>`, or `<image@digest>`) - `before`=(`<container id>` or `<container name>`) - `expose`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `exited=<int>` containers with exit code of `<int>` - `health`=(`starting`|`healthy`|`unhealthy`|`none`) - `id=<ID>` a container's ID - `isolation=`(`default`|`process`|`hyperv`) (Windows daemon only) - `is-task=`(`true`|`false`) - `label=key` or `label=\"key=value\"` of a container label - `name=<name>` a container's name - `network`=(`<network id>` or `<network name>`) - `publish`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `since`=(`<container id>` or `<container name>`) - `status=`(`created`|`restarting`|`running`|`removing`|`paused`|`exited`|`dead`) - `volume`=(`<volume name>` or `<mount point destination>`) 

try { 
    var result = api_instance.containerList(all, limit, size, filters);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **all** | **bool**| Return all containers. By default, only running containers are shown.  | [optional] [default to false]
 **limit** | **int**| Return this number of most recently created containers, including non-running ones.  | [optional] [default to null]
 **size** | **bool**| Return the size of container as fields &#x60;SizeRw&#x60; and &#x60;SizeRootFs&#x60;.  | [optional] [default to false]
 **filters** | **String**| Filters to process on the container list, encoded as JSON (a &#x60;map[string][]string&#x60;). For example, &#x60;{\&quot;status\&quot;: [\&quot;paused\&quot;]}&#x60; will only return paused containers.  Available filters:  - &#x60;ancestor&#x60;&#x3D;(&#x60;&lt;image-name&gt;[:&lt;tag&gt;]&#x60;, &#x60;&lt;image id&gt;&#x60;, or &#x60;&lt;image@digest&gt;&#x60;) - &#x60;before&#x60;&#x3D;(&#x60;&lt;container id&gt;&#x60; or &#x60;&lt;container name&gt;&#x60;) - &#x60;expose&#x60;&#x3D;(&#x60;&lt;port&gt;[/&lt;proto&gt;]&#x60;|&#x60;&lt;startport-endport&gt;/[&lt;proto&gt;]&#x60;) - &#x60;exited&#x3D;&lt;int&gt;&#x60; containers with exit code of &#x60;&lt;int&gt;&#x60; - &#x60;health&#x60;&#x3D;(&#x60;starting&#x60;|&#x60;healthy&#x60;|&#x60;unhealthy&#x60;|&#x60;none&#x60;) - &#x60;id&#x3D;&lt;ID&gt;&#x60; a container&#39;s ID - &#x60;isolation&#x3D;&#x60;(&#x60;default&#x60;|&#x60;process&#x60;|&#x60;hyperv&#x60;) (Windows daemon only) - &#x60;is-task&#x3D;&#x60;(&#x60;true&#x60;|&#x60;false&#x60;) - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; of a container label - &#x60;name&#x3D;&lt;name&gt;&#x60; a container&#39;s name - &#x60;network&#x60;&#x3D;(&#x60;&lt;network id&gt;&#x60; or &#x60;&lt;network name&gt;&#x60;) - &#x60;publish&#x60;&#x3D;(&#x60;&lt;port&gt;[/&lt;proto&gt;]&#x60;|&#x60;&lt;startport-endport&gt;/[&lt;proto&gt;]&#x60;) - &#x60;since&#x60;&#x3D;(&#x60;&lt;container id&gt;&#x60; or &#x60;&lt;container name&gt;&#x60;) - &#x60;status&#x3D;&#x60;(&#x60;created&#x60;|&#x60;restarting&#x60;|&#x60;running&#x60;|&#x60;removing&#x60;|&#x60;paused&#x60;|&#x60;exited&#x60;|&#x60;dead&#x60;) - &#x60;volume&#x60;&#x3D;(&#x60;&lt;volume name&gt;&#x60; or &#x60;&lt;mount point destination&gt;&#x60;)  | [optional] [default to null]

### Return type

[**List<Object>**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerLogs**
> MultipartFile containerLogs(id, follow, stdout, stderr, since, until, timestamps, tail)

Get container logs

Get `stdout` and `stderr` logs from a container.  Note: This endpoint works only for containers with the `json-file` or `journald` logging driver. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var follow = true; // bool | Keep connection after returning logs.
var stdout = true; // bool | Return logs from `stdout`
var stderr = true; // bool | Return logs from `stderr`
var since = 56; // int | Only return logs since this time, as a UNIX timestamp
var until = 56; // int | Only return logs before this time, as a UNIX timestamp
var timestamps = true; // bool | Add timestamps to every log line
var tail = tail_example; // String | Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines. 

try { 
    var result = api_instance.containerLogs(id, follow, stdout, stderr, since, until, timestamps, tail);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **follow** | **bool**| Keep connection after returning logs. | [optional] [default to false]
 **stdout** | **bool**| Return logs from &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **bool**| Return logs from &#x60;stderr&#x60; | [optional] [default to false]
 **since** | **int**| Only return logs since this time, as a UNIX timestamp | [optional] [default to 0]
 **until** | **int**| Only return logs before this time, as a UNIX timestamp | [optional] [default to 0]
 **timestamps** | **bool**| Add timestamps to every log line | [optional] [default to false]
 **tail** | **String**| Only return this number of log lines from the end of the logs. Specify as an integer or &#x60;all&#x60; to output all log lines.  | [optional] [default to &quot;all&quot;]

### Return type

[**MultipartFile**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerPause**
> containerPause(id)

Pause a container

Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the `SIGSTOP` signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container

try { 
    api_instance.containerPause(id);
} catch (e) {
    print("Exception when calling ContainerApi->containerPause: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerPrune**
> ContainerPruneResponse containerPrune(filters)

Delete stopped containers

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var filters = filters_example; // String | Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune containers created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune containers with (or without, in case `label!=...` is used) the specified labels. 

try { 
    var result = api_instance.containerPrune(filters);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerPrune: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;until&#x3D;&lt;timestamp&gt;&#x60; Prune containers created before this timestamp. The &#x60;&lt;timestamp&gt;&#x60; can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. &#x60;10m&#x60;, &#x60;1h30m&#x60;) computed relative to the daemon machine’s time. - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune containers with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels.  | [optional] [default to null]

### Return type

[**ContainerPruneResponse**](ContainerPruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerRename**
> containerRename(id, name)

Rename a container

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var name = name_example; // String | New name for the container

try { 
    api_instance.containerRename(id, name);
} catch (e) {
    print("Exception when calling ContainerApi->containerRename: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **name** | **String**| New name for the container | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerResize**
> containerResize(id, h, w)

Resize a container TTY

Resize the TTY for a container.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var h = 56; // int | Height of the TTY session in characters
var w = 56; // int | Width of the TTY session in characters

try { 
    api_instance.containerResize(id, h, w);
} catch (e) {
    print("Exception when calling ContainerApi->containerResize: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **h** | **int**| Height of the TTY session in characters | [optional] [default to null]
 **w** | **int**| Width of the TTY session in characters | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerRestart**
> containerRestart(id, t)

Restart a container

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var t = 56; // int | Number of seconds to wait before killing the container

try { 
    api_instance.containerRestart(id, t);
} catch (e) {
    print("Exception when calling ContainerApi->containerRestart: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **t** | **int**| Number of seconds to wait before killing the container | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerStart**
> containerStart(id, detachKeys)

Start a container

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var detachKeys = detachKeys_example; // String | Override the key sequence for detaching a container. Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`. 

try { 
    api_instance.containerStart(id, detachKeys);
} catch (e) {
    print("Exception when calling ContainerApi->containerStart: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **detachKeys** | **String**| Override the key sequence for detaching a container. Format is a single character &#x60;[a-Z]&#x60; or &#x60;ctrl-&lt;value&gt;&#x60; where &#x60;&lt;value&gt;&#x60; is one of: &#x60;a-z&#x60;, &#x60;@&#x60;, &#x60;^&#x60;, &#x60;[&#x60;, &#x60;,&#x60; or &#x60;_&#x60;.  | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerStats**
> Object containerStats(id, stream)

Get container stats based on resource usage

This endpoint returns a live stream of a container’s resource usage statistics.  The `precpu_stats` is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the `cpu_stats` field.  If either `precpu_stats.online_cpus` or `cpu_stats.online_cpus` is nil then for compatibility with older daemons the length of the corresponding `cpu_usage.percpu_usage` array should be used.  To calculate the values shown by the `stats` command of the docker cli tool the following formulas can be used: * used_memory = `memory_stats.usage - memory_stats.stats.cache` * available_memory = `memory_stats.limit` * Memory usage % = `(used_memory / available_memory) * 100.0` * cpu_delta = `cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage` * system_cpu_delta = `cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage` * number_cpus = `lenght(cpu_stats.cpu_usage.percpu_usage)` or `cpu_stats.online_cpus` * CPU usage % = `(cpu_delta / system_cpu_delta) * number_cpus * 100.0` 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var stream = true; // bool | Stream the output. If false, the stats will be output once and then it will disconnect. 

try { 
    var result = api_instance.containerStats(id, stream);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **stream** | **bool**| Stream the output. If false, the stats will be output once and then it will disconnect.  | [optional] [default to true]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerStop**
> containerStop(id, t)

Stop a container

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var t = 56; // int | Number of seconds to wait before killing the container

try { 
    api_instance.containerStop(id, t);
} catch (e) {
    print("Exception when calling ContainerApi->containerStop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **t** | **int**| Number of seconds to wait before killing the container | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerTop**
> ContainerTopResponse containerTop(id, psArgs)

List processes running inside a container

On Unix systems, this is done by running the `ps` command. This endpoint is not supported on Windows. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var psArgs = psArgs_example; // String | The arguments to pass to `ps`. For example, `aux`

try { 
    var result = api_instance.containerTop(id, psArgs);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerTop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **psArgs** | **String**| The arguments to pass to &#x60;ps&#x60;. For example, &#x60;aux&#x60; | [optional] [default to &quot;-ef&quot;]

### Return type

[**ContainerTopResponse**](ContainerTopResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerUnpause**
> containerUnpause(id)

Unpause a container

Resume a container which has been paused.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container

try { 
    api_instance.containerUnpause(id);
} catch (e) {
    print("Exception when calling ContainerApi->containerUnpause: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerUpdate**
> ContainerUpdateResponse containerUpdate(id, update)

Update a container

Change various configuration options of a container without having to recreate it. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var update = Resources(); // Object | 

try { 
    var result = api_instance.containerUpdate(id, update);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **update** | [**Resources**](Resources.md)|  | 

### Return type

[**ContainerUpdateResponse**](ContainerUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerWait**
> ContainerWaitResponse containerWait(id, condition)

Wait for a container

Block until a container stops, then returns the exit code.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var condition = condition_example; // String | Wait until a container state reaches the given condition, either 'not-running' (default), 'next-exit', or 'removed'. 

try { 
    var result = api_instance.containerWait(id, condition);
    print(result);
} catch (e) {
    print("Exception when calling ContainerApi->containerWait: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **condition** | **String**| Wait until a container state reaches the given condition, either &#39;not-running&#39; (default), &#39;next-exit&#39;, or &#39;removed&#39;.  | [optional] [default to &quot;not-running&quot;]

### Return type

[**ContainerWaitResponse**](ContainerWaitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putContainerArchive**
> putContainerArchive(id, path, inputStream, noOverwriteDirNonDir, copyUIDGID)

Extract an archive of files or folders to a directory in a container

Upload a tar archive to be extracted to a path in the filesystem of container id.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ContainerApi();
var id = id_example; // String | ID or name of the container
var path = path_example; // String | Path to a directory in the container to extract the archive’s contents into. 
var inputStream = MultipartFile(); // MultipartFile | The input stream must be a tar archive compressed with one of the following algorithms: `identity` (no compression), `gzip`, `bzip2`, or `xz`. 
var noOverwriteDirNonDir = noOverwriteDirNonDir_example; // String | If `1`, `true`, or `True` then it will be an error if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa. 
var copyUIDGID = copyUIDGID_example; // String | If `1`, `true`, then it will copy UID/GID maps to the dest file or dir 

try { 
    api_instance.putContainerArchive(id, path, inputStream, noOverwriteDirNonDir, copyUIDGID);
} catch (e) {
    print("Exception when calling ContainerApi->putContainerArchive: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the container | [default to null]
 **path** | **String**| Path to a directory in the container to extract the archive’s contents into.  | [default to null]
 **inputStream** | **MultipartFile**| The input stream must be a tar archive compressed with one of the following algorithms: &#x60;identity&#x60; (no compression), &#x60;gzip&#x60;, &#x60;bzip2&#x60;, or &#x60;xz&#x60;.  | 
 **noOverwriteDirNonDir** | **String**| If &#x60;1&#x60;, &#x60;true&#x60;, or &#x60;True&#x60; then it will be an error if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa.  | [optional] [default to null]
 **copyUIDGID** | **String**| If &#x60;1&#x60;, &#x60;true&#x60;, then it will copy UID/GID maps to the dest file or dir  | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-tar, application/octet-stream
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

