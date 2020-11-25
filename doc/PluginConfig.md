# openapi.model.PluginConfig

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dockerVersion** | **String** | Docker Version used to create the plugin | [optional] [default to null]
**description** | **String** |  | [default to null]
**documentation** | **String** |  | [default to null]
**interface_** | [**PluginConfigInterface**](PluginConfigInterface.md) |  | [default to null]
**entrypoint** | **List&lt;String&gt;** |  | [default to []]
**workDir** | **String** |  | [default to null]
**user** | [**PluginConfigUser**](PluginConfigUser.md) |  | [optional] [default to null]
**network** | [**PluginConfigNetwork**](PluginConfigNetwork.md) |  | [default to null]
**linux** | [**PluginConfigLinux**](PluginConfigLinux.md) |  | [default to null]
**propagatedMount** | **String** |  | [default to null]
**ipcHost** | **bool** |  | [default to null]
**pidHost** | **bool** |  | [default to null]
**mounts** | [**List&lt;PluginMount&gt;**](PluginMount.md) |  | [default to []]
**env** | [**List&lt;PluginEnv&gt;**](PluginEnv.md) |  | [default to []]
**args** | [**PluginConfigArgs**](PluginConfigArgs.md) |  | [default to null]
**rootfs** | [**PluginConfigRootfs**](PluginConfigRootfs.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


