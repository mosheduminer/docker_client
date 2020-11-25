# openapi.model.SystemEventsResponse

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of object emitting the event | [optional] [default to null]
**action** | **String** | The type of event | [optional] [default to null]
**actor** | [**SystemEventsResponseActor**](SystemEventsResponseActor.md) |  | [optional] [default to null]
**time** | **int** | Timestamp of event | [optional] [default to null]
**timeNano** | **int** | Timestamp of event, with nanosecond accuracy | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


