# openapi.model.Task

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **String** | The ID of the task. | [optional] [default to null]
**version** | [**ObjectVersion**](ObjectVersion.md) |  | [optional] [default to null]
**createdAt** | **String** |  | [optional] [default to null]
**updatedAt** | **String** |  | [optional] [default to null]
**name** | **String** | Name of the task. | [optional] [default to null]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]
**spec** | [**TaskSpec**](TaskSpec.md) |  | [optional] [default to null]
**serviceID** | **String** | The ID of the service this task is part of. | [optional] [default to null]
**slot** | **int** |  | [optional] [default to null]
**nodeID** | **String** | The ID of the node that this task is on. | [optional] [default to null]
**assignedGenericResources** | [**List&lt;Object&gt;**](Object.md) | User-defined resources can be either Integer resources (e.g, &#x60;SSD&#x3D;3&#x60;) or String resources (e.g, &#x60;GPU&#x3D;UUID1&#x60;).  | [optional] [default to []]
**status** | [**TaskStatus**](TaskStatus.md) |  | [optional] [default to null]
**desiredState** | [**TaskState**](TaskState.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


