# openapi.model.ServiceSpec

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the service. | [optional] [default to null]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]
**taskTemplate** | [**TaskSpec**](TaskSpec.md) |  | [optional] [default to null]
**mode** | [**ServiceSpecMode**](ServiceSpecMode.md) |  | [optional] [default to null]
**updateConfig** | [**ServiceSpecUpdateConfig**](ServiceSpecUpdateConfig.md) |  | [optional] [default to null]
**rollbackConfig** | [**ServiceSpecRollbackConfig**](ServiceSpecRollbackConfig.md) |  | [optional] [default to null]
**networks** | [**List&lt;NetworkAttachmentConfig&gt;**](NetworkAttachmentConfig.md) | Specifies which networks the service should attach to. | [optional] [default to []]
**endpointSpec** | [**EndpointSpec**](EndpointSpec.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


