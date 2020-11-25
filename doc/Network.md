# openapi.model.Network

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] [default to null]
**id** | **String** |  | [optional] [default to null]
**created** | **String** |  | [optional] [default to null]
**scope** | **String** |  | [optional] [default to null]
**driver** | **String** |  | [optional] [default to null]
**enableIPv6** | **bool** |  | [optional] [default to null]
**IPAM** | [**IPAM**](IPAM.md) |  | [optional] [default to null]
**internal** | **bool** |  | [optional] [default to null]
**attachable** | **bool** |  | [optional] [default to null]
**ingress** | **bool** |  | [optional] [default to null]
**containers** | [**Map&lt;String, NetworkContainer&gt;**](NetworkContainer.md) |  | [optional] [default to {}]
**options** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**labels** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


