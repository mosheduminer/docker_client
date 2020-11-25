# openapi.api.DistributionApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**distributionInspect**](DistributionApi.md#distributionInspect) | **GET** /distribution/{name}/json | Get image information from the registry


# **distributionInspect**
> DistributionInspectResponse distributionInspect(name)

Get image information from the registry

Return image digest and platform information by contacting the registry. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = DistributionApi();
var name = name_example; // String | Image name or id

try { 
    var result = api_instance.distributionInspect(name);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Image name or id | [default to null]

### Return type

[**DistributionInspectResponse**](DistributionInspectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

