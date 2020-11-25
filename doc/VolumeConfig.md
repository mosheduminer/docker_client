# openapi.model.VolumeConfig

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new volume&#39;s name. If not specified, Docker generates a name.  | [optional] [default to null]
**driver** | **String** | Name of the volume driver to use. | [optional] [default to &quot;local&quot;]
**driverOpts** | **Map&lt;String, String&gt;** | A mapping of driver options and values. These options are passed directly to the driver and are driver specific.  | [optional] [default to {}]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


