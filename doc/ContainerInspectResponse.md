# openapi.model.ContainerInspectResponse

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the container | [optional] [default to null]
**created** | **String** | The time the container was created | [optional] [default to null]
**path** | **String** | The path to the command being run | [optional] [default to null]
**args** | **List&lt;String&gt;** | The arguments to the command being run | [optional] [default to []]
**state** | [**ContainerState**](ContainerState.md) |  | [optional] [default to null]
**image** | **String** | The container&#39;s image ID | [optional] [default to null]
**resolvConfPath** | **String** |  | [optional] [default to null]
**hostnamePath** | **String** |  | [optional] [default to null]
**hostsPath** | **String** |  | [optional] [default to null]
**logPath** | **String** |  | [optional] [default to null]
**node** | [**Object**](.md) | TODO | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**restartCount** | **int** |  | [optional] [default to null]
**driver** | **String** |  | [optional] [default to null]
**platform** | **String** |  | [optional] [default to null]
**mountLabel** | **String** |  | [optional] [default to null]
**processLabel** | **String** |  | [optional] [default to null]
**appArmorProfile** | **String** |  | [optional] [default to null]
**execIDs** | **List&lt;String&gt;** | IDs of exec instances that are running in the container. | [optional] [default to []]
**hostConfig** | [**HostConfig**](HostConfig.md) |  | [optional] [default to null]
**graphDriver** | [**GraphDriverData**](GraphDriverData.md) |  | [optional] [default to null]
**sizeRw** | **int** | The size of files that have been created or changed by this container.  | [optional] [default to null]
**sizeRootFs** | **int** | The total size of all the files in this container. | [optional] [default to null]
**mounts** | [**List&lt;MountPoint&gt;**](MountPoint.md) |  | [optional] [default to []]
**config** | [**ContainerConfig**](ContainerConfig.md) |  | [optional] [default to null]
**networkSettings** | [**NetworkSettings**](NetworkSettings.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


