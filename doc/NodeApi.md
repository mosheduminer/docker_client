# openapi.api.NodeApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nodeDelete**](NodeApi.md#nodeDelete) | **DELETE** /nodes/{id} | Delete a node
[**nodeInspect**](NodeApi.md#nodeInspect) | **GET** /nodes/{id} | Inspect a node
[**nodeList**](NodeApi.md#nodeList) | **GET** /nodes | List nodes
[**nodeUpdate**](NodeApi.md#nodeUpdate) | **POST** /nodes/{id}/update | Update a node


# **nodeDelete**
> nodeDelete(id, force)

Delete a node

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = NodeApi();
var id = id_example; // String | The ID or name of the node
var force = true; // bool | Force remove a node from the swarm

try { 
    api_instance.nodeDelete(id, force);
} catch (e) {
    print("Exception when calling NodeApi->nodeDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID or name of the node | [default to null]
 **force** | **bool**| Force remove a node from the swarm | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeInspect**
> Node nodeInspect(id)

Inspect a node

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = NodeApi();
var id = id_example; // String | The ID or name of the node

try { 
    var result = api_instance.nodeInspect(id);
    print(result);
} catch (e) {
    print("Exception when calling NodeApi->nodeInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID or name of the node | [default to null]

### Return type

[**Node**](Node.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeList**
> List<Node> nodeList(filters)

List nodes

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = NodeApi();
var filters = filters_example; // String | Filters to process on the nodes list, encoded as JSON (a `map[string][]string`).  Available filters: - `id=<node id>` - `label=<engine label>` - `membership=`(`accepted`|`pending`)` - `name=<node name>` - `node.label=<node label>` - `role=`(`manager`|`worker`)` 

try { 
    var result = api_instance.nodeList(filters);
    print(result);
} catch (e) {
    print("Exception when calling NodeApi->nodeList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| Filters to process on the nodes list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;id&#x3D;&lt;node id&gt;&#x60; - &#x60;label&#x3D;&lt;engine label&gt;&#x60; - &#x60;membership&#x3D;&#x60;(&#x60;accepted&#x60;|&#x60;pending&#x60;)&#x60; - &#x60;name&#x3D;&lt;node name&gt;&#x60; - &#x60;node.label&#x3D;&lt;node label&gt;&#x60; - &#x60;role&#x3D;&#x60;(&#x60;manager&#x60;|&#x60;worker&#x60;)&#x60;  | [optional] [default to null]

### Return type

[**List<Node>**](Node.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeUpdate**
> nodeUpdate(id, version, body)

Update a node

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = NodeApi();
var id = id_example; // String | The ID of the node
var version = 789; // int | The version number of the node object being updated. This is required to avoid conflicting writes. 
var body = NodeSpec(); // NodeSpec | 

try { 
    api_instance.nodeUpdate(id, version, body);
} catch (e) {
    print("Exception when calling NodeApi->nodeUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the node | [default to null]
 **version** | **int**| The version number of the node object being updated. This is required to avoid conflicting writes.  | [default to null]
 **body** | [**NodeSpec**](NodeSpec.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

