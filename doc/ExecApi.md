# openapi.api.ExecApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**containerExec**](ExecApi.md#containerExec) | **POST** /containers/{id}/exec | Create an exec instance
[**execInspect**](ExecApi.md#execInspect) | **GET** /exec/{id}/json | Inspect an exec instance
[**execResize**](ExecApi.md#execResize) | **POST** /exec/{id}/resize | Resize an exec instance
[**execStart**](ExecApi.md#execStart) | **POST** /exec/{id}/start | Start an exec instance


# **containerExec**
> IdResponse containerExec(id, execConfig)

Create an exec instance

Run a command inside a running container.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ExecApi();
var id = id_example; // String | ID or name of container
var execConfig = InlineObject(); // InlineObject | 

try { 
    var result = api_instance.containerExec(id, execConfig);
    print(result);
} catch (e) {
    print("Exception when calling ExecApi->containerExec: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of container | [default to null]
 **execConfig** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execInspect**
> ExecInspectResponse execInspect(id)

Inspect an exec instance

Return low-level information about an exec instance.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ExecApi();
var id = id_example; // String | Exec instance ID

try { 
    var result = api_instance.execInspect(id);
    print(result);
} catch (e) {
    print("Exception when calling ExecApi->execInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Exec instance ID | [default to null]

### Return type

[**ExecInspectResponse**](ExecInspectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execResize**
> execResize(id, h, w)

Resize an exec instance

Resize the TTY session used by an exec instance. This endpoint only works if `tty` was specified as part of creating and starting the exec instance. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ExecApi();
var id = id_example; // String | Exec instance ID
var h = 56; // int | Height of the TTY session in characters
var w = 56; // int | Width of the TTY session in characters

try { 
    api_instance.execResize(id, h, w);
} catch (e) {
    print("Exception when calling ExecApi->execResize: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Exec instance ID | [default to null]
 **h** | **int**| Height of the TTY session in characters | [optional] [default to null]
 **w** | **int**| Width of the TTY session in characters | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execStart**
> execStart(id, execStartConfig)

Start an exec instance

Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ExecApi();
var id = id_example; // String | Exec instance ID
var execStartConfig = InlineObject1(); // InlineObject1 | 

try { 
    api_instance.execStart(id, execStartConfig);
} catch (e) {
    print("Exception when calling ExecApi->execStart: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Exec instance ID | [default to null]
 **execStartConfig** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.docker.raw-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

