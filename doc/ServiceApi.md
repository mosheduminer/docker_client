# openapi.api.ServiceApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviceCreate**](ServiceApi.md#serviceCreate) | **POST** /services/create | Create a service
[**serviceDelete**](ServiceApi.md#serviceDelete) | **DELETE** /services/{id} | Delete a service
[**serviceInspect**](ServiceApi.md#serviceInspect) | **GET** /services/{id} | Inspect a service
[**serviceList**](ServiceApi.md#serviceList) | **GET** /services | List services
[**serviceLogs**](ServiceApi.md#serviceLogs) | **GET** /services/{id}/logs | Get service logs
[**serviceUpdate**](ServiceApi.md#serviceUpdate) | **POST** /services/{id}/update | Update a service


# **serviceCreate**
> ServiceCreateResponse serviceCreate(body, xRegistryAuth)

Create a service

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ServiceApi();
var body = ServiceSpec(); // Object | 
var xRegistryAuth = xRegistryAuth_example; // String | A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details. 

try { 
    var result = api_instance.serviceCreate(body, xRegistryAuth);
    print(result);
} catch (e) {
    print("Exception when calling ServiceApi->serviceCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ServiceSpec**](ServiceSpec.md)|  | 
 **xRegistryAuth** | **String**| A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] [default to null]

### Return type

[**ServiceCreateResponse**](ServiceCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceDelete**
> serviceDelete(id)

Delete a service

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ServiceApi();
var id = id_example; // String | ID or name of service.

try { 
    api_instance.serviceDelete(id);
} catch (e) {
    print("Exception when calling ServiceApi->serviceDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of service. | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceInspect**
> Service serviceInspect(id, insertDefaults)

Inspect a service

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ServiceApi();
var id = id_example; // String | ID or name of service.
var insertDefaults = true; // bool | Fill empty fields with default values.

try { 
    var result = api_instance.serviceInspect(id, insertDefaults);
    print(result);
} catch (e) {
    print("Exception when calling ServiceApi->serviceInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of service. | [default to null]
 **insertDefaults** | **bool**| Fill empty fields with default values. | [optional] [default to false]

### Return type

[**Service**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceList**
> List<Service> serviceList(filters)

List services

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ServiceApi();
var filters = filters_example; // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the services list.  Available filters:  - `id=<service id>` - `label=<service label>` - `mode=[\"replicated\"|\"global\"]` - `name=<service name>` 

try { 
    var result = api_instance.serviceList(filters);
    print(result);
} catch (e) {
    print("Exception when calling ServiceApi->serviceList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the services list.  Available filters:  - &#x60;id&#x3D;&lt;service id&gt;&#x60; - &#x60;label&#x3D;&lt;service label&gt;&#x60; - &#x60;mode&#x3D;[\&quot;replicated\&quot;|\&quot;global\&quot;]&#x60; - &#x60;name&#x3D;&lt;service name&gt;&#x60;  | [optional] [default to null]

### Return type

[**List<Service>**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceLogs**
> MultipartFile serviceLogs(id, details, follow, stdout, stderr, since, timestamps, tail)

Get service logs

Get `stdout` and `stderr` logs from a service. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ServiceApi();
var id = id_example; // String | ID or name of the service
var details = true; // bool | Show service context and extra details provided to logs.
var follow = true; // bool | Keep connection after returning logs.
var stdout = true; // bool | Return logs from `stdout`
var stderr = true; // bool | Return logs from `stderr`
var since = 56; // int | Only return logs since this time, as a UNIX timestamp
var timestamps = true; // bool | Add timestamps to every log line
var tail = tail_example; // String | Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines. 

try { 
    var result = api_instance.serviceLogs(id, details, follow, stdout, stderr, since, timestamps, tail);
    print(result);
} catch (e) {
    print("Exception when calling ServiceApi->serviceLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of the service | [default to null]
 **details** | **bool**| Show service context and extra details provided to logs. | [optional] [default to false]
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

# **serviceUpdate**
> ServiceUpdateResponse serviceUpdate(id, version, body, registryAuthFrom, rollback, xRegistryAuth)

Update a service

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ServiceApi();
var id = id_example; // String | ID or name of service.
var version = 56; // int | The version number of the service object being updated. This is required to avoid conflicting writes. This version number should be the value as currently set on the service *before* the update. You can find the current version by calling `GET /services/{id}` 
var body = ServiceSpec(); // Object | 
var registryAuthFrom = registryAuthFrom_example; // String | If the `X-Registry-Auth` header is not specified, this parameter indicates where to find registry authorization credentials. 
var rollback = rollback_example; // String | Set to this parameter to `previous` to cause a server-side rollback to the previous service spec. The supplied spec will be ignored in this case. 
var xRegistryAuth = xRegistryAuth_example; // String | A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details. 

try { 
    var result = api_instance.serviceUpdate(id, version, body, registryAuthFrom, rollback, xRegistryAuth);
    print(result);
} catch (e) {
    print("Exception when calling ServiceApi->serviceUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID or name of service. | [default to null]
 **version** | **int**| The version number of the service object being updated. This is required to avoid conflicting writes. This version number should be the value as currently set on the service *before* the update. You can find the current version by calling &#x60;GET /services/{id}&#x60;  | [default to null]
 **body** | [**ServiceSpec**](ServiceSpec.md)|  | 
 **registryAuthFrom** | **String**| If the &#x60;X-Registry-Auth&#x60; header is not specified, this parameter indicates where to find registry authorization credentials.  | [optional] [default to &quot;spec&quot;]
 **rollback** | **String**| Set to this parameter to &#x60;previous&#x60; to cause a server-side rollback to the previous service spec. The supplied spec will be ignored in this case.  | [optional] [default to null]
 **xRegistryAuth** | **String**| A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] [default to null]

### Return type

[**ServiceUpdateResponse**](ServiceUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

