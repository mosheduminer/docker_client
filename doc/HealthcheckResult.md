# openapi.model.HealthcheckResult

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | [**DateTime**](DateTime.md) | Date and time at which this check started in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] [default to null]
**end** | **String** | Date and time at which this check ended in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] [default to null]
**exitCode** | **int** | ExitCode meanings:  - &#x60;0&#x60; healthy - &#x60;1&#x60; unhealthy - &#x60;2&#x60; reserved (considered unhealthy) - other values: error running probe  | [optional] [default to null]
**output** | **String** | Output from last check | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


