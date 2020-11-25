# openapi.api.SwarmApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**swarmInit**](SwarmApi.md#swarmInit) | **POST** /swarm/init | Initialize a new swarm
[**swarmInspect**](SwarmApi.md#swarmInspect) | **GET** /swarm | Inspect swarm
[**swarmJoin**](SwarmApi.md#swarmJoin) | **POST** /swarm/join | Join an existing swarm
[**swarmLeave**](SwarmApi.md#swarmLeave) | **POST** /swarm/leave | Leave a swarm
[**swarmUnlock**](SwarmApi.md#swarmUnlock) | **POST** /swarm/unlock | Unlock a locked manager
[**swarmUnlockkey**](SwarmApi.md#swarmUnlockkey) | **GET** /swarm/unlockkey | Get the unlock key
[**swarmUpdate**](SwarmApi.md#swarmUpdate) | **POST** /swarm/update | Update a swarm


# **swarmInit**
> String swarmInit(body)

Initialize a new swarm

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();
var body = InlineObject5(); // InlineObject5 | 

try { 
    var result = api_instance.swarmInit(body);
    print(result);
} catch (e) {
    print("Exception when calling SwarmApi->swarmInit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmInspect**
> Swarm swarmInspect()

Inspect swarm

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();

try { 
    var result = api_instance.swarmInspect();
    print(result);
} catch (e) {
    print("Exception when calling SwarmApi->swarmInspect: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swarm**](Swarm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmJoin**
> swarmJoin(body)

Join an existing swarm

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();
var body = InlineObject6(); // InlineObject6 | 

try { 
    api_instance.swarmJoin(body);
} catch (e) {
    print("Exception when calling SwarmApi->swarmJoin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmLeave**
> swarmLeave(force)

Leave a swarm

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();
var force = true; // bool | Force leave swarm, even if this is the last manager or that it will break the cluster. 

try { 
    api_instance.swarmLeave(force);
} catch (e) {
    print("Exception when calling SwarmApi->swarmLeave: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **force** | **bool**| Force leave swarm, even if this is the last manager or that it will break the cluster.  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmUnlock**
> swarmUnlock(body)

Unlock a locked manager

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();
var body = InlineObject7(); // InlineObject7 | 

try { 
    api_instance.swarmUnlock(body);
} catch (e) {
    print("Exception when calling SwarmApi->swarmUnlock: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmUnlockkey**
> UnlockKeyResponse swarmUnlockkey()

Get the unlock key

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();

try { 
    var result = api_instance.swarmUnlockkey();
    print(result);
} catch (e) {
    print("Exception when calling SwarmApi->swarmUnlockkey: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnlockKeyResponse**](UnlockKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmUpdate**
> swarmUpdate(version, body, rotateWorkerToken, rotateManagerToken, rotateManagerUnlockKey)

Update a swarm

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SwarmApi();
var version = 789; // int | The version number of the swarm object being updated. This is required to avoid conflicting writes. 
var body = SwarmSpec(); // SwarmSpec | 
var rotateWorkerToken = true; // bool | Rotate the worker join token.
var rotateManagerToken = true; // bool | Rotate the manager join token.
var rotateManagerUnlockKey = true; // bool | Rotate the manager unlock key.

try { 
    api_instance.swarmUpdate(version, body, rotateWorkerToken, rotateManagerToken, rotateManagerUnlockKey);
} catch (e) {
    print("Exception when calling SwarmApi->swarmUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **int**| The version number of the swarm object being updated. This is required to avoid conflicting writes.  | [default to null]
 **body** | [**SwarmSpec**](SwarmSpec.md)|  | 
 **rotateWorkerToken** | **bool**| Rotate the worker join token. | [optional] [default to false]
 **rotateManagerToken** | **bool**| Rotate the manager join token. | [optional] [default to false]
 **rotateManagerUnlockKey** | **bool**| Rotate the manager unlock key. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

