# openapi.api.TaskApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**taskInspect**](TaskApi.md#taskInspect) | **GET** /tasks/{id} | Inspect a task
[**taskList**](TaskApi.md#taskList) | **GET** /tasks | List tasks
[**taskLogs**](TaskApi.md#taskLogs) | **GET** /tasks/{id}/logs | Get task logs


# **taskInspect**
> Task taskInspect(id)

Inspect a task

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = TaskApi();
var id = id_example; // String | ID of the task

try { 
    var result = api_instance.taskInspect(id);
    print(result);
} catch (e) {
    print("Exception when calling TaskApi->taskInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the task | [default to null]

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **taskList**
> List<Task> taskList(filters)

List tasks

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = TaskApi();
var filters = filters_example; // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the tasks list.  Available filters:  - `desired-state=(running | shutdown | accepted)` - `id=<task id>` - `label=key` or `label=\"key=value\"` - `name=<task name>` - `node=<node id or name>` - `service=<service name>` 

try { 
    var result = api_instance.taskList(filters);
    print(result);
} catch (e) {
    print("Exception when calling TaskApi->taskList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the tasks list.  Available filters:  - &#x60;desired-state&#x3D;(running | shutdown | accepted)&#x60; - &#x60;id&#x3D;&lt;task id&gt;&#x60; - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; - &#x60;name&#x3D;&lt;task name&gt;&#x60; - &#x60;node&#x3D;&lt;node id or name&gt;&#x60; - &#x60;service&#x3D;&lt;service name&gt;&#x60;  | [optional] [default to null]

### Return type

[**List<Task>**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **taskLogs**
> MultipartFile taskLogs(id, details, follow, stdout, stderr, since, timestamps, tail)

Get task logs

Get `stdout` and `stderr` logs from a task. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = TaskApi();
var id = id_example; // String | ID of the task
var details = true; // bool | Show task context and extra details provided to logs.
var follow = true; // bool | Keep connection after returning logs.
var stdout = true; // bool | Return logs from `stdout`
var stderr = true; // bool | Return logs from `stderr`
var since = 56; // int | Only return logs since this time, as a UNIX timestamp
var timestamps = true; // bool | Add timestamps to every log line
var tail = tail_example; // String | Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines. 

try { 
    var result = api_instance.taskLogs(id, details, follow, stdout, stderr, since, timestamps, tail);
    print(result);
} catch (e) {
    print("Exception when calling TaskApi->taskLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the task | [default to null]
 **details** | **bool**| Show task context and extra details provided to logs. | [optional] [default to false]
 **follow** | **bool**| Keep connection after returning logs. | [optional] [default to false]
 **stdout** | **bool**| Return logs from &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **bool**| Return logs from &#x60;stderr&#x60; | [optional] [default to false]
 **since** | **int**| Only return logs since this time, as a UNIX timestamp | [optional] [default to 0]
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

