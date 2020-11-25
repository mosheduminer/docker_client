# openapi.model.TaskSpec

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pluginSpec** | [**TaskSpecPluginSpec**](TaskSpecPluginSpec.md) |  | [optional] [default to null]
**containerSpec** | [**TaskSpecContainerSpec**](TaskSpecContainerSpec.md) |  | [optional] [default to null]
**networkAttachmentSpec** | [**TaskSpecNetworkAttachmentSpec**](TaskSpecNetworkAttachmentSpec.md) |  | [optional] [default to null]
**resources** | [**TaskSpecResources**](TaskSpecResources.md) |  | [optional] [default to null]
**restartPolicy** | [**TaskSpecRestartPolicy**](TaskSpecRestartPolicy.md) |  | [optional] [default to null]
**placement** | [**TaskSpecPlacement**](TaskSpecPlacement.md) |  | [optional] [default to null]
**forceUpdate** | **int** | A counter that triggers an update even if no relevant parameters have been changed.  | [optional] [default to null]
**runtime** | **String** | Runtime is the type of runtime specified for the task executor.  | [optional] [default to null]
**networks** | [**List&lt;NetworkAttachmentConfig&gt;**](NetworkAttachmentConfig.md) | Specifies which networks the service should attach to. | [optional] [default to []]
**logDriver** | [**TaskSpecLogDriver**](TaskSpecLogDriver.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


