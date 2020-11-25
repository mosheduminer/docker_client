# openapi.model.InlineObject2

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The network&#39;s name. | [default to null]
**checkDuplicate** | **bool** | Check for networks with duplicate names. Since Network is primarily keyed based on a random ID and not on the name, and network name is strictly a user-friendly alias to the network which is uniquely identified using ID, there is no guaranteed way to check for duplicates. CheckDuplicate is there to provide a best effort checking of any networks which has the same name but it is not guaranteed to catch all name collisions.  | [optional] [default to null]
**driver** | **String** | Name of the network driver plugin to use. | [optional] [default to &quot;bridge&quot;]
**internal** | **bool** | Restrict external access to the network. | [optional] [default to null]
**attachable** | **bool** | Globally scoped network is manually attachable by regular containers from workers in swarm mode.  | [optional] [default to null]
**ingress** | **bool** | Ingress network is the network which provides the routing-mesh in swarm mode.  | [optional] [default to null]
**IPAM** | [**IPAM**](IPAM.md) |  | [optional] [default to null]
**enableIPv6** | **bool** | Enable IPv6 on the network. | [optional] [default to null]
**options** | **Map&lt;String, String&gt;** | Network specific options to be used by the drivers. | [optional] [default to {}]
**labels** | **Map&lt;String, String&gt;** | User-defined key/value metadata. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


