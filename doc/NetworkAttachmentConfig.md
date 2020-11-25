# openapi.model.NetworkAttachmentConfig

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target** | **String** | The target network for attachment. Must be a network name or ID.  | [optional] [default to null]
**aliases** | **List&lt;String&gt;** | Discoverable alternate names for the service on this network.  | [optional] [default to []]
**driverOpts** | **Map&lt;String, String&gt;** | Driver attachment options for the network target.  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


