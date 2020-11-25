# openapi.model.ConfigSpec

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | User-defined name of the config. | [optional] [default to null]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]
**data** | **String** | Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) config data.  | [optional] [default to null]
**templating** | [**Driver**](Driver.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


