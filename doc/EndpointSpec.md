# openapi.model.EndpointSpec

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mode** | **String** | The mode of resolution to use for internal load balancing between tasks.  | [optional] [default to &quot;vip&quot;]
**ports** | [**List&lt;EndpointPortConfig&gt;**](EndpointPortConfig.md) | List of exposed ports that this service is accessible on from the outside. Ports can only be provided if &#x60;vip&#x60; resolution mode is used.  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


