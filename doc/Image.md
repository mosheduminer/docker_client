# openapi.model.Image

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [default to null]
**repoTags** | **List&lt;String&gt;** |  | [optional] [default to []]
**repoDigests** | **List&lt;String&gt;** |  | [optional] [default to []]
**parent** | **String** |  | [default to null]
**comment** | **String** |  | [default to null]
**created** | **String** |  | [default to null]
**container** | **String** |  | [default to null]
**containerConfig** | [**ContainerConfig**](ContainerConfig.md) |  | [optional] [default to null]
**dockerVersion** | **String** |  | [default to null]
**author** | **String** |  | [default to null]
**config** | [**ContainerConfig**](ContainerConfig.md) |  | [optional] [default to null]
**architecture** | **String** |  | [default to null]
**os** | **String** |  | [default to null]
**osVersion** | **String** |  | [optional] [default to null]
**size** | **int** |  | [default to null]
**virtualSize** | **int** |  | [default to null]
**graphDriver** | [**GraphDriverData**](GraphDriverData.md) |  | [default to null]
**rootFS** | [**ImageRootFS**](ImageRootFS.md) |  | [default to null]
**metadata** | [**ImageMetadata**](ImageMetadata.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


