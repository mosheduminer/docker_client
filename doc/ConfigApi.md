# openapi.api.ConfigApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configCreate**](ConfigApi.md#configCreate) | **POST** /configs/create | Create a config
[**configDelete**](ConfigApi.md#configDelete) | **DELETE** /configs/{id} | Delete a config
[**configInspect**](ConfigApi.md#configInspect) | **GET** /configs/{id} | Inspect a config
[**configList**](ConfigApi.md#configList) | **GET** /configs | List configs
[**configUpdate**](ConfigApi.md#configUpdate) | **POST** /configs/{id}/update | Update a Config


# **configCreate**
> IdResponse configCreate(body)

Create a config

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ConfigApi();
var body = ConfigSpec(); // Object | 

try { 
    var result = api_instance.configCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling ConfigApi->configCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConfigSpec**](ConfigSpec.md)|  | [optional] 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configDelete**
> configDelete(id)

Delete a config

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ConfigApi();
var id = id_example; // String | ID of the config

try { 
    api_instance.configDelete(id);
} catch (e) {
    print("Exception when calling ConfigApi->configDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the config | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configInspect**
> Config configInspect(id)

Inspect a config

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ConfigApi();
var id = id_example; // String | ID of the config

try { 
    var result = api_instance.configInspect(id);
    print(result);
} catch (e) {
    print("Exception when calling ConfigApi->configInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the config | [default to null]

### Return type

[**Config**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configList**
> List<Config> configList(filters)

List configs

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ConfigApi();
var filters = filters_example; // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the configs list.  Available filters:  - `id=<config id>` - `label=<key> or label=<key>=value` - `name=<config name>` - `names=<config name>` 

try { 
    var result = api_instance.configList(filters);
    print(result);
} catch (e) {
    print("Exception when calling ConfigApi->configList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the configs list.  Available filters:  - &#x60;id&#x3D;&lt;config id&gt;&#x60; - &#x60;label&#x3D;&lt;key&gt; or label&#x3D;&lt;key&gt;&#x3D;value&#x60; - &#x60;name&#x3D;&lt;config name&gt;&#x60; - &#x60;names&#x3D;&lt;config name&gt;&#x60;  | [optional] [default to null]

### Return type

[**List<Config>**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configUpdate**
> configUpdate(id, version, body)

Update a Config

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = ConfigApi();
var id = id_example; // String | The ID or name of the config
var version = 789; // int | The version number of the config object being updated. This is required to avoid conflicting writes. 
var body = ConfigSpec(); // ConfigSpec | The spec of the config to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [ConfigInspect endpoint](#operation/ConfigInspect) response values. 

try { 
    api_instance.configUpdate(id, version, body);
} catch (e) {
    print("Exception when calling ConfigApi->configUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID or name of the config | [default to null]
 **version** | **int**| The version number of the config object being updated. This is required to avoid conflicting writes.  | [default to null]
 **body** | [**ConfigSpec**](ConfigSpec.md)| The spec of the config to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [ConfigInspect endpoint](#operation/ConfigInspect) response values.  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

