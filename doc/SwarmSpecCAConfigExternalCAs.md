# openapi.model.SwarmSpecCAConfigExternalCAs

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol** | **String** | Protocol for communication with the external CA (currently only &#x60;cfssl&#x60; is supported).  | [optional] [default to &quot;cfssl&quot;]
**URL** | **String** | URL where certificate signing requests should be sent.  | [optional] [default to null]
**options** | **Map&lt;String, String&gt;** | An object with key/value pairs that are interpreted as protocol-specific options for the external CA driver.  | [optional] [default to {}]
**cACert** | **String** | The root CA certificate (in PEM format) this external CA uses to issue TLS certificates (assumed to be to the current swarm root CA certificate if not provided).  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


