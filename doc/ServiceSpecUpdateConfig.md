# openapi.model.ServiceSpecUpdateConfig

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parallelism** | **int** | Maximum number of tasks to be updated in one iteration (0 means unlimited parallelism).  | [optional] [default to null]
**delay** | **int** | Amount of time between updates, in nanoseconds. | [optional] [default to null]
**failureAction** | **String** | Action to take if an updated task fails to run, or stops running during the update.  | [optional] [default to null]
**monitor** | **int** | Amount of time to monitor each updated task for failures, in nanoseconds.  | [optional] [default to null]
**maxFailureRatio** | **num** | The fraction of tasks that may fail during an update before the failure action is invoked, specified as a floating point number between 0 and 1.  | [optional] [default to null]
**order** | **String** | The order of operations when rolling out an updated task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


