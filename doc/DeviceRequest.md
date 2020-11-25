# openapi.model.DeviceRequest

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driver** | **String** |  | [optional] [default to null]
**count** | **int** |  | [optional] [default to null]
**deviceIDs** | **List&lt;String&gt;** |  | [optional] [default to []]
**capabilities** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | A list of capabilities; an OR list of AND lists of capabilities.  | [optional] [default to []]
**options** | **Map&lt;String, String&gt;** | Driver-specific options, specified as a key/value pairs. These options are passed directly to the driver.  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


