# openapi.model.SwarmSpec

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the swarm. | [optional] [default to null]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]
**orchestration** | [**SwarmSpecOrchestration**](SwarmSpecOrchestration.md) |  | [optional] [default to null]
**raft** | [**SwarmSpecRaft**](SwarmSpecRaft.md) |  | [optional] [default to null]
**dispatcher** | [**SwarmSpecDispatcher**](SwarmSpecDispatcher.md) |  | [optional] [default to null]
**cAConfig** | [**SwarmSpecCAConfig**](SwarmSpecCAConfig.md) |  | [optional] [default to null]
**encryptionConfig** | [**SwarmSpecEncryptionConfig**](SwarmSpecEncryptionConfig.md) |  | [optional] [default to null]
**taskDefaults** | [**SwarmSpecTaskDefaults**](SwarmSpecTaskDefaults.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


