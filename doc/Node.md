# openapi.model.Node

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **String** |  | [optional] [default to null]
**version** | [**ObjectVersion**](ObjectVersion.md) |  | [optional] [default to null]
**createdAt** | **String** | Date and time at which the node was added to the swarm in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] [default to null]
**updatedAt** | **String** | Date and time at which the node was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] [default to null]
**spec** | [**NodeSpec**](NodeSpec.md) |  | [optional] [default to null]
**description** | [**NodeDescription**](NodeDescription.md) |  | [optional] [default to null]
**status** | [**NodeStatus**](NodeStatus.md) |  | [optional] [default to null]
**managerStatus** | [**ManagerStatus**](ManagerStatus.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


