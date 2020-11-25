# openapi.model.TaskSpecContainerSpecSecrets

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | [**TaskSpecContainerSpecFile**](TaskSpecContainerSpecFile.md) |  | [optional] [default to null]
**secretID** | **String** | SecretID represents the ID of the specific secret that we&#39;re referencing.  | [optional] [default to null]
**secretName** | **String** | SecretName is the name of the secret that this references, but this is just provided for lookup/display purposes. The secret in the reference will be identified by its ID.  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


