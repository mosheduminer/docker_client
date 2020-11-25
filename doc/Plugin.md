# openapi.model.Plugin

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [default to null]
**name** | **String** |  | [default to null]
**enabled** | **bool** | True if the plugin is running. False if the plugin is not running, only installed. | [default to null]
**settings** | [**PluginSettings**](PluginSettings.md) |  | [default to null]
**pluginReference** | **String** | plugin remote reference used to push/pull the plugin | [optional] [default to null]
**config** | [**PluginConfig**](PluginConfig.md) |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


