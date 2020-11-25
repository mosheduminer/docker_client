# openapi.model.Volume

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the volume. | [default to null]
**driver** | **String** | Name of the volume driver used by the volume. | [default to null]
**mountpoint** | **String** | Mount path of the volume on the host. | [default to null]
**createdAt** | **String** | Date/Time the volume was created. | [optional] [default to null]
**status** | [**Map&lt;String, Object&gt;**](Object.md) | Low-level details about the volume, provided by the volume driver. Details are returned as a map with key/value pairs: &#x60;{\&quot;key\&quot;:\&quot;value\&quot;,\&quot;key2\&quot;:\&quot;value2\&quot;}&#x60;.  The &#x60;Status&#x60; field is optional, and is omitted if the volume driver does not support this feature.  | [optional] [default to {}]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [default to {}]
**scope** | **String** | The level at which the volume exists. Either &#x60;global&#x60; for cluster-wide, or &#x60;local&#x60; for machine level.  | [default to &quot;local&quot;]
**options** | **Map&lt;String, String&gt;** | The driver specific options used when creating the volume.  | [default to {}]
**usageData** | [**VolumeUsageData**](VolumeUsageData.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


