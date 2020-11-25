# openapi.api.VolumeApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**volumeCreate**](VolumeApi.md#volumeCreate) | **POST** /volumes/create | Create a volume
[**volumeDelete**](VolumeApi.md#volumeDelete) | **DELETE** /volumes/{name} | Remove a volume
[**volumeInspect**](VolumeApi.md#volumeInspect) | **GET** /volumes/{name} | Inspect a volume
[**volumeList**](VolumeApi.md#volumeList) | **GET** /volumes | List volumes
[**volumePrune**](VolumeApi.md#volumePrune) | **POST** /volumes/prune | Delete unused volumes


# **volumeCreate**
> Volume volumeCreate(volumeConfig)

Create a volume

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = VolumeApi();
var volumeConfig = VolumeConfig(); // VolumeConfig | 

try { 
    var result = api_instance.volumeCreate(volumeConfig);
    print(result);
} catch (e) {
    print("Exception when calling VolumeApi->volumeCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volumeConfig** | [**VolumeConfig**](VolumeConfig.md)|  | 

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeDelete**
> volumeDelete(name, force)

Remove a volume

Instruct the driver to remove the volume.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = VolumeApi();
var name = name_example; // String | Volume name or ID
var force = true; // bool | Force the removal of the volume

try { 
    api_instance.volumeDelete(name, force);
} catch (e) {
    print("Exception when calling VolumeApi->volumeDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Volume name or ID | [default to null]
 **force** | **bool**| Force the removal of the volume | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeInspect**
> Volume volumeInspect(name)

Inspect a volume

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = VolumeApi();
var name = name_example; // String | Volume name or ID

try { 
    var result = api_instance.volumeInspect(name);
    print(result);
} catch (e) {
    print("Exception when calling VolumeApi->volumeInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Volume name or ID | [default to null]

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeList**
> VolumeListResponse volumeList(filters)

List volumes

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = VolumeApi();
var filters = filters_example; // String | JSON encoded value of the filters (a `map[string][]string`) to process on the volumes list. Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    volumes that are not in use by a container. When set to `false`    (or `0`), only volumes that are in use by one or more    containers are returned. - `driver=<volume-driver-name>` Matches volumes based on their driver. - `label=<key>` or `label=<key>:<value>` Matches volumes based on    the presence of a `label` alone or a `label` and a value. - `name=<volume-name>` Matches all or part of a volume name. 

try { 
    var result = api_instance.volumeList(filters);
    print(result);
} catch (e) {
    print("Exception when calling VolumeApi->volumeList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the volumes list. Available filters:  - &#x60;dangling&#x3D;&lt;boolean&gt;&#x60; When set to &#x60;true&#x60; (or &#x60;1&#x60;), returns all    volumes that are not in use by a container. When set to &#x60;false&#x60;    (or &#x60;0&#x60;), only volumes that are in use by one or more    containers are returned. - &#x60;driver&#x3D;&lt;volume-driver-name&gt;&#x60; Matches volumes based on their driver. - &#x60;label&#x3D;&lt;key&gt;&#x60; or &#x60;label&#x3D;&lt;key&gt;:&lt;value&gt;&#x60; Matches volumes based on    the presence of a &#x60;label&#x60; alone or a &#x60;label&#x60; and a value. - &#x60;name&#x3D;&lt;volume-name&gt;&#x60; Matches all or part of a volume name.  | [optional] [default to null]

### Return type

[**VolumeListResponse**](VolumeListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumePrune**
> VolumePruneResponse volumePrune(filters)

Delete unused volumes

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = VolumeApi();
var filters = filters_example; // String | Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels. 

try { 
    var result = api_instance.volumePrune(filters);
    print(result);
} catch (e) {
    print("Exception when calling VolumeApi->volumePrune: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune volumes with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels.  | [optional] [default to null]

### Return type

[**VolumePruneResponse**](VolumePruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

