# openapi.api.SecretApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**secretCreate**](SecretApi.md#secretCreate) | **POST** /secrets/create | Create a secret
[**secretDelete**](SecretApi.md#secretDelete) | **DELETE** /secrets/{id} | Delete a secret
[**secretInspect**](SecretApi.md#secretInspect) | **GET** /secrets/{id} | Inspect a secret
[**secretList**](SecretApi.md#secretList) | **GET** /secrets | List secrets
[**secretUpdate**](SecretApi.md#secretUpdate) | **POST** /secrets/{id}/update | Update a Secret


# **secretCreate**
> IdResponse secretCreate(body)

Create a secret

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SecretApi();
var body = SecretSpec(); // Object | 

try { 
    var result = api_instance.secretCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling SecretApi->secretCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SecretSpec**](SecretSpec.md)|  | [optional] 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretDelete**
> secretDelete(id)

Delete a secret

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SecretApi();
var id = id_example; // String | ID of the secret

try { 
    api_instance.secretDelete(id);
} catch (e) {
    print("Exception when calling SecretApi->secretDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the secret | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretInspect**
> Secret secretInspect(id)

Inspect a secret

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SecretApi();
var id = id_example; // String | ID of the secret

try { 
    var result = api_instance.secretInspect(id);
    print(result);
} catch (e) {
    print("Exception when calling SecretApi->secretInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the secret | [default to null]

### Return type

[**Secret**](Secret.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretList**
> List<Secret> secretList(filters)

List secrets

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SecretApi();
var filters = filters_example; // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the secrets list.  Available filters:  - `id=<secret id>` - `label=<key> or label=<key>=value` - `name=<secret name>` - `names=<secret name>` 

try { 
    var result = api_instance.secretList(filters);
    print(result);
} catch (e) {
    print("Exception when calling SecretApi->secretList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the secrets list.  Available filters:  - &#x60;id&#x3D;&lt;secret id&gt;&#x60; - &#x60;label&#x3D;&lt;key&gt; or label&#x3D;&lt;key&gt;&#x3D;value&#x60; - &#x60;name&#x3D;&lt;secret name&gt;&#x60; - &#x60;names&#x3D;&lt;secret name&gt;&#x60;  | [optional] [default to null]

### Return type

[**List<Secret>**](Secret.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretUpdate**
> secretUpdate(id, version, body)

Update a Secret

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = SecretApi();
var id = id_example; // String | The ID or name of the secret
var version = 789; // int | The version number of the secret object being updated. This is required to avoid conflicting writes. 
var body = SecretSpec(); // SecretSpec | The spec of the secret to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [SecretInspect endpoint](#operation/SecretInspect) response values. 

try { 
    api_instance.secretUpdate(id, version, body);
} catch (e) {
    print("Exception when calling SecretApi->secretUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID or name of the secret | [default to null]
 **version** | **int**| The version number of the secret object being updated. This is required to avoid conflicting writes.  | [default to null]
 **body** | [**SecretSpec**](SecretSpec.md)| The spec of the secret to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [SecretInspect endpoint](#operation/SecretInspect) response values.  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

